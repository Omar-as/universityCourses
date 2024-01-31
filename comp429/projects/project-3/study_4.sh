echo "==============================================================================="
echo "                Running strong scalling"
echo "==============================================================================="

make cardiacsim_b

echo "==============================================================================="
echo "                Running file study_4"
echo "==============================================================================="

for ((num_processes=1; num_processes<=8; num_processes*=2)); do
    RUNS=5
    echo "==============================================================================="
    echo "Parallel version with $num_processes processes"
    echo "==============================================================================="
    for ((thread_num=1; thread_num<=4; thread_num+=1)); do

        echo "Parallel version with $thread_num threads"
        export OMP_NUM_THREADS=$thread_num
        
        temp_gflops="temp_gflops_study_4.txt"
        
        > "$temp_gflops"
        
        for ((i=1; i<=RUNS; i++)); do
            output=$(mpirun -np $num_processes ./cardiacsim_b -n 1024 -t 100 -y $num_processes)
            echo "$output" | grep "Sustained Gflops Rate" | sed -E 's/.*: ([0-9]+)/\1/' >> "$temp_gflops"
        done
        
        calculate_average() {
            local file=$1
            awk '{sum += $1; count++} END {print sum/count}' "$file"
        }

        echo "Average gflops: $(calculate_average $temp_gflops)"

        rm "$temp_gflops" 
    done
done
