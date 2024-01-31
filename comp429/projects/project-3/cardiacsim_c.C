/* 
 * Solves the Panfilov model using an explicit numerical scheme.
 * Based on code orginally provided by Xing Cai, Simula Research Laboratory 
 * and reimplementation by Scott B. Baden, UCSD
 * 
 * Modified and  restructured by Didem Unat, Koc University
 *
 */

#include <stdio.h>
#include <assert.h>
#include <stdlib.h>
#include <iostream>
#include <iomanip>
#include <string.h>
#include <math.h>
#include <sys/time.h>
#include <mpi.h>
using namespace std;

// Utilities
// 

// Timer
// Make successive calls and take a difference to get the elapsed time.
static const double kMicro = 1.0e-6;
double getTime()
{
		struct timeval TV;
		struct timezone TZ;
		
		const int RC = gettimeofday(&TV, &TZ);
		if(RC == -1) {
			 cerr << "ERROR: Bad call to gettimeofday" << endl;
			 return(-1);
		}
		
		return( ((double)TV.tv_sec) + kMicro * ((double)TV.tv_usec) );
		
}  // end getTime()

// Allocate a 2D array
double **alloc2D(int m,int n){
		double **E;
		int nx=n, ny=m;
		E = (double**)malloc(sizeof(double*)*ny + sizeof(double)*nx*ny);
		assert(E);
		int j;
		for(j=0;j<ny;j++) 
			 E[j] = (double*)(E+ny) + j*nx;
		return(E);
}
		
// Reports statistics about the computation
// These values should not vary (except to within roundoff)
// when we use different numbers of  processes to solve the problem
double stats(double **E, int m, int n, double *_mx){
		double mx = -1;
		double l2norm = 0;
		int i, j;
		for (j=1; j<=m; j++)
			 for (i=1; i<=n; i++) {
			     l2norm += E[j][i]*E[j][i];
			     if (E[j][i] > mx)
			     mx = E[j][i];
			 }
		*_mx = mx;
		return l2norm;
}

// External functions
extern "C" {
		void splot(double **E, double T, int niter, int m, int n);
}
void cmdLine(int argc, char *argv[], double& T, int& n, int& px, int& py, int& plot_freq, int& no_comm, int&num_threads);


void simulate (double** E,  double** E_prev,double** R,
			   const double alpha, const int n, const int m, const double kk,
			   const double dt, const double a, const double epsilon,
			   const double M1,const double  M2, const double b, int rank, int size, int* directions, double **buffer, int no_comm)
{
    int col, row;

    int i = 0;

    MPI_Status stats;

    MPI_Request reqs[8];

    // === Sending Data ===
    if (no_comm == 0)
    {
        if (directions[0] > -1)
        {
            MPI_Isend(&E_prev[1][1], n, MPI_DOUBLE, directions[0], 0, MPI_COMM_WORLD, &reqs[0]);
        }

        if (directions[1] > -1)
        {
            MPI_Isend(&E_prev[m][1], n, MPI_DOUBLE, directions[1], 0, MPI_COMM_WORLD, &reqs[1]);
        }

        if (directions[2] > -1)
        {

            for (i = 1; i <= m; i++)
            {
                buffer[0][i - 1] = E_prev[i][1];
            }

            MPI_Isend(&buffer[0][0], m, MPI_DOUBLE, directions[2], 0, MPI_COMM_WORLD, &reqs[4]);
        }

        if (directions[3] > -1)
        {
            for (i = 1; i <= m; i++)
            {
                buffer[1][i - 1] = E_prev[i][n];
            }

            MPI_Isend(&buffer[1][0], m, MPI_DOUBLE, directions[3], 0, MPI_COMM_WORLD, &reqs[5]);
        }
    }

    for (row = 1; row <= m; row++)
        E_prev[row][0] = E_prev[row][2];
    for (row = 1; row <= m; row++)
        E_prev[row][n + 1] = E_prev[row][n - 1];

    for (col = 1; col <= n; col++)
        E_prev[0][col] = E_prev[2][col];
    for (col = 1; col <= n; col++)
        E_prev[m + 1][col] = E_prev[m - 1][col];

    // ===== Recving Data ====
    if (no_comm == 0)
    {
        if (directions[1] > -1)
        {
            MPI_Irecv(&E_prev[m + 1][1], n, MPI_DOUBLE, directions[1], 0, MPI_COMM_WORLD, &reqs[2]);
        }

        if (directions[0] > -1)
        {
            MPI_Irecv(&E_prev[0][1], n, MPI_DOUBLE, directions[0], 0, MPI_COMM_WORLD, &reqs[3]);
        }

        if (directions[2] > -1)
        {
            MPI_Irecv(&buffer[2][0], m, MPI_DOUBLE, directions[2], 0, MPI_COMM_WORLD, &reqs[6]);
        }

        if (directions[3] > -1)
        {
            MPI_Irecv(&buffer[3][0], m, MPI_DOUBLE, directions[3], 0, MPI_COMM_WORLD, &reqs[7]);
        }

        // ====Wait on Recv Data ===

        if (directions[1] > -1)
        {
            MPI_Wait(&reqs[2], &stats);
        }

        if (directions[0] > -1)
        {
            MPI_Wait(&reqs[3], &stats);
        }

        if (directions[2] > -1)
        {

            MPI_Wait(&reqs[6], &stats);

            for (i = 1; i <= m; i++)
            {
                E_prev[i][0] = buffer[2][i - 1];
            }
        }

        if (directions[3] > -1)
        {
            MPI_Wait(&reqs[7], &stats);

            for (i = 1; i <= m; i++)
            {
                E_prev[i][n + 1] = buffer[3][i - 1];
            }
        }
    }

    //===== Solve for the excitation, the PDE ====
    for (row = 1; row <= m; row++)
    {
        for (col = 1; col <= n; col++)
        {
            E[row][col] = E_prev[row][col] + alpha * (E_prev[row][col + 1] + E_prev[row][col - 1] - 4 * E_prev[row][col] + E_prev[row + 1][col] + E_prev[row - 1][col]);
        }
    }

    /* 
     * Solve the ODE, advancing excitation and recovery to the
     *     next timtestep
    */
    for (row = 1; row <= m; row++)
    {
        for (col = 1; col <= n; col++)
            E[row][col] = E[row][col] - dt * (kk * E[row][col] * (E[row][col] - a) * (E[row][col] - 1) + E[row][col] * R[row][col]);
    }

    for (row = 1; row <= m; row++)
    {
        for (col = 1; col <= n; col++)
            R[row][col] = R[row][col] + dt * (epsilon + M1 * R[row][col] / (E[row][col] + M2)) * (-R[row][col] - kk * E[row][col] * (E[row][col] - b - 1));
    }

    // Wait on sent data
    if (no_comm == 0)
    {
        if (directions[0] > -1)
        {
            MPI_Wait(&reqs[0], &stats);
        }

        if (directions[1] > -1)
        {
            MPI_Wait(&reqs[1], &stats);
        }

        if (directions[2] > -1)
        {
            MPI_Wait(&reqs[4], &stats);
        }

        if (directions[3] > -1)
        {
            MPI_Wait(&reqs[5], &stats);
        }
    }
}

// Main program
int main (int argc, char** argv)
{
	/*
	*  Solution arrays
	*   E is the "Excitation" variable, a voltage
	*   R is the "Recovery" variable
	*   E_prev is the Excitation variable for the previous timestep,
	*      and is used in time integration
	*/
	double **E, **R, **E_prev;
	
	// Various constants - these definitions shouldn't change
	const double a=0.1, b=0.1, kk=8.0, M1= 0.07, M2=0.3, epsilon=0.01, d=5e-5;
	
	double T=1000.0;
	int m=200,n=200;
	int plot_freq = 0;
	int px = 1, py = 1;
	int no_comm = 0;
	int num_threads=1; 

	cmdLine( argc, argv, T, n,px, py, plot_freq, no_comm, num_threads);
	m = n;  
	// Allocate contiguous memory for solution arrays
	// The computational box is defined on [1:m+1,1:n+1]
	// We pad the arrays in order to facilitate differencing on the 
	// boundaries of the computation box
	E       = alloc2D(m+2,n+2);
	E_prev  = alloc2D(m+2,n+2);
	R       = alloc2D(m+2,n+2);

    int rank, size;
    MPI_Init(NULL, NULL);

    MPI_Comm_rank(MPI_COMM_WORLD, &rank);
    MPI_Comm_size(MPI_COMM_WORLD, &size);


    // directions[0], directions[1], directions[2], directions[3]
    // directions[0],            directions[1],          directions[2],          directions[3]
    int directions[4];
	
    int new_i = -1;
    int new_j = -1;

    int temp_array[py + 2][px + 2];
    int current_id = 0;

    for (int i = 0; i < py + 2; i++){
        for (int j = 0; j < px + 2; j++){
            temp_array[i][j] = -1;
        }
    }

    for (int i = 1; i <= py; i++){
        for (int j = 1; j <= px; j++){
            if (rank == current_id) {
                new_i = i;
                new_j = j;
            }
            temp_array[i][j] = current_id;
            current_id++;
        }
    }

    directions[0] = temp_array[new_i - 1][new_j];
    directions[1] = temp_array[new_i + 1][new_j];
    directions[2] = temp_array[new_i][new_j - 1];
    directions[3] = temp_array[new_i][new_j + 1];

	int i,j;
	// Initialization
	for (j=1; j<=m; j++)
		for (i=1; i<=n; i++)
			E_prev[j][i] = R[j][i] = 0;
	
	for (j=1; j<=m; j++)
		for (i=n/2+1; i<=n; i++)
			E_prev[j][i] = 1.0;
	
	for (j=m/2+1; j<=m; j++)
		for (i=1; i<=n; i++)
			R[j][i] = 1.0;

    int new_n = n / px;
    int new_m = m / py;

    int x_axis_array[px], y_axis_array[py];

    for (int i = 0; i < py; ++i) {
        y_axis_array[i] = (i < m % py) ? new_m + 1 : new_m;
        if (i > 0) y_axis_array[i] += y_axis_array[i - 1];
    }

    for (int i = 0; i < px; ++i) {
        x_axis_array[i] = (i < n % px) ? new_n + 1 : new_n;
        if (i > 0) x_axis_array[i] += x_axis_array[i - 1];
    }

    int start_row = (new_i > 1) ? y_axis_array[new_i - 2] + 1 : 1;
    int end_row = y_axis_array[new_i - 1] + 1;

    int start_col = (new_j > 1) ? x_axis_array[new_j - 2] + 1 : 1;
    int end_col = x_axis_array[new_j - 1] + 1;

    new_m = end_row - start_row;
    new_n = end_col - start_col;

    double** buffer =       alloc2D(4, new_m);
    double** new_E =        alloc2D(new_m + 2, new_n + 2);
    double** new_E_prev =   alloc2D(new_m + 2, new_n + 2);
    double** new_R =        alloc2D(new_m + 2, new_n + 2);

    int temp_i = 1, temp_j = 1;
    for (int i = start_row; i < end_row; i++)
    {
        temp_j = 1;
        for (int j = start_col; j < end_col; j++)
        {
            new_E_prev[temp_i][temp_j]  = E_prev[i][j];
            new_R[temp_i][temp_j]       = R[i][j];
            temp_j++;
        }
        temp_i++;
    }

	double dx = 1.0/n;

	// For time integration, these values shouldn't change 
	double rp= kk*(b+1)*(b+1)/4;
	double dte=(dx*dx)/(d*4+((dx*dx))*(rp+kk));
	double dtr=1/(epsilon+((M1/M2)*rp));
	double dt = (dte<dtr) ? 0.95*dte : 0.95*dtr;
	double alpha = d*dt/(dx*dx);

	cout << "Grid Size       : " << n << endl; 
	cout << "Duration of Sim : " << T << endl; 
	cout << "Time step dt    : " << dt << endl; 
	cout << "Process geometry: " << px << " x " << py << endl;
	if (no_comm)
		cout << "Communication   : DISABLED" << endl;
	
	cout << endl;

    MPI_Barrier(MPI_COMM_WORLD);
	
	// Start the timer
	double t0 = getTime();

	// Simulated time is different from the integer timestep number
	// Simulated time
	double t = 0.0;
	// Integer timestep number
	int niter=0;
	

	while (t<T) {

		t += dt;
		niter++;
 
		simulate(new_E, new_E_prev, new_R, alpha, new_n, new_m, kk, dt, a, epsilon, M1, M2, b, rank, size, directions, buffer, no_comm); 

		//swap current E with previous E
		double **tmp = new_E; 
        new_E = new_E_prev; 
        new_E_prev = tmp;
		

        if (plot_freq) {
            if (rank == 0) {
                // Allocate memory for E_prev in root process
                E_prev = alloc2D(m + 2, n + 2);
                int counts[size];
                int displacement[size];
                for (int i = 0; i < size; i++) {
                    counts[i] = (y_axis_array[i] - (i > 0 ? y_axis_array[i - 1] : 0) + 2) * (n + 2);
                    displacement[i] = (i > 0 ? displacement[i - 1] + counts[i - 1] : 0);
                }
        
                // Gather data from all processes
                MPI_Gatherv(&new_E_prev[0][0], (new_m + 2) * (n + 2), MPI_DOUBLE, &E_prev[0][0], counts, displacement, MPI_DOUBLE, 0, MPI_COMM_WORLD);
            } else {
                // Non-root processes send their data
                MPI_Gatherv(&new_E_prev[0][0], (new_m + 2) * (n + 2), MPI_DOUBLE, NULL, NULL, NULL, MPI_DOUBLE, 0, MPI_COMM_WORLD);
            }
        
            if (rank == 0) {
                // Plotting in root process
                int k = (int)(t / plot_freq);
                if ((t - k * plot_freq) < dt) {
                    splot(E_prev, t, niter, m + 2, n + 2);
                }
            }
        }


	}//end of while loop

	double time_elapsed = getTime() - t0;

    MPI_Request reqs[2];
    MPI_Status status[2];
	double mx;
    double l2norm;

    double process_mx;
	double process_l2norm = stats(new_E_prev, new_m, new_n, &process_mx);

    if (no_comm == 0)
    {
        MPI_Ireduce(&process_mx,     &mx,     1, MPI_DOUBLE, MPI_MAX, 0, MPI_COMM_WORLD, &reqs[0]);
        MPI_Ireduce(&process_l2norm, &l2norm, 1, MPI_DOUBLE, MPI_SUM, 0, MPI_COMM_WORLD, &reqs[1]);

        MPI_Wait(&reqs[0], &status[0]);
        MPI_Wait(&reqs[1], &status[1]);
    }

    if (rank == 0){
        l2norm /= (double)((m) * (n));
        l2norm = sqrt(l2norm);

	   double Gflops = (double)(niter * (1E-9 * n * n ) * 28.0) / time_elapsed ;
	   double BW = (double)(niter * 1E-9 * (n * n * sizeof(double) * 4.0  ))/time_elapsed;

	   cout << "Number of Iterations        : " << niter << endl;
	   cout << "Elapsed Time (sec)          : " << time_elapsed << endl;
	   cout << "Sustained Gflops Rate       : " << Gflops << endl; 
	   cout << "Sustained Bandwidth (GB/sec): " << BW << endl << endl; 

	   cout << "Max: " << mx <<  " L2norm: "<< l2norm << endl;

	   if (plot_freq){
	   	cout << "\n\nEnter any input to close the program and the plot..." << endl;
	   	getchar();
	   }
    }
    
	free (E);
	free (E_prev);
	free (R);

	free (new_E);
	free (new_E_prev);
	free (new_R);

	MPI_Finalize();
	return 0;
}
