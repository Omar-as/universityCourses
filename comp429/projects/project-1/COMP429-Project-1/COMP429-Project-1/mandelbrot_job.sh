#!/usr/bin/env bash
#
# You should only work under the /scratch/users/<username> directory.
#
# Example job submission script
#
# -= Resources =-
#
#SBATCH --job-name=mandelbrot-jobs
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=32
#SBATCH --mem-per-cpu=1G
#SBATCH --qos=shorter
#SBATCH --partition=shorter
#SBATCH --time=02:00:00
#SBATCH --output=mandelbrot-jobs.out

################################################################################
##################### !!! DO NOT EDIT ABOVE THIS LINE !!! ######################
################################################################################
# Set stack size to unlimited
# echo "Setting stack size to unlimited..."
# ulimit -s unlimited
# ulimit -l unlimited
# ulimit -a

# echo "Loading GCC 11..."
# module load gcc/11.2.0

echo

echo "Running Job...!"
echo "==============================================================================="
echo "Running compiled binary..."

# echo "Parallel version with 16 threads"

# export OMP_NUM_THREADS=16
# make -C ./mandelbrot run

make -C mandelbrot/

for mandelbrot_file in mandelbrot/cmp_files/*; do
    echo "==============================================================================="
    echo "                Running file $mandelbrot_file"
    echo "==============================================================================="

    for ((thread_num=1; thread_num<=32; thread_num*=2)); do
        RUNS=5
        
        echo "Parallel version with $thread_num threads"
        export OMP_NUM_THREADS=$thread_num
        # Temporary files for storing durations
        temp_zoom_in_mixed="zoom_in_mixed_durations.txt"
        temp_zoom_in_white="zoom_in_white_durations.txt"
        temp_zoom_in_black="zoom_in_black_durations.txt"
        temp_zoom_in_mine="zoom_in_my_durations.txt"
        
        # Initialize or clear temporary files
> "$temp_zoom_in_mixed"
> "$temp_zoom_in_white"
> "$temp_zoom_in_black"
> "$temp_zoom_in_mine"
        
        for ((i=1; i<=RUNS; i++)); do
            # Run the command and capture the output
        
            output=$($mandelbrot_file)
            # Extract and store durations for each test
            echo "$output" | grep "Finished test ( zoom_in_test_mixed)" | sed -E 's/.*in: ([0-9]+) ms/\1/' >> "$temp_zoom_in_mixed"
            echo "$output" | grep "Finished test ( zoom_in_test_all_white)" | sed -E 's/.*in: ([0-9]+) ms/\1/' >> "$temp_zoom_in_white"
            echo "$output" | grep "Finished test ( zoom_in_test_all_black)" | sed -E 's/.*in: ([0-9]+) ms/\1/' >> "$temp_zoom_in_black"
            echo "$output" | grep "Finished test ( zoom_in_my_test)" | sed -E 's/.*in: ([0-9]+) ms/\1/' >> "$temp_zoom_in_mine"
        done
        
        # Function to calculate average from a file
        calculate_average() {
            local file=$1
            local sum=0
            local count=0
            while read -r duration; do
                sum=$((sum + duration))
                count=$((count + 1))
            done < "$file"
            echo $((sum / count))
        }
        
        # Calculate and print averages
        echo "Average Duration for zoom_in_test_mixed: $(calculate_average $temp_zoom_in_mixed) ms"
        echo "Average Duration for zoom_in_test_all_white: $(calculate_average $temp_zoom_in_white) ms"
        echo "Average Duration for zoom_in_test_all_black: $(calculate_average $temp_zoom_in_black) ms"
        echo "Average Duration for temp_zoom_in_mine: $(calculate_average $temp_zoom_in_mine) ms"
        
        # Clean up temporary files
        rm "$temp_zoom_in_mixed" "$temp_zoom_in_white" "$temp_zoom_in_black" "$temp_zoom_in_mine"
    done
done