echo "==============================================================================="
echo "                Running strong scalling"
echo "==============================================================================="

make cardiacsim_a

echo "==============================================================================="
echo "                Running file study_1"
echo "==============================================================================="

for ((num_processes=1; num_processes<=16; num_processes*=2)); do
    RUNS=5
    
    echo "Parallel version with $num_processes processes"
    temp_gflops="temp_gflops_study_1.txt"
    
    > "$temp_gflops"
    
    for ((i=1; i<=RUNS; i++)); do
    
        output=$(mpirun -np $num_processes ./cardiacsim_a -n 1024 -t 100 -y $num_processes)
        echo "$output" | grep "Sustained Gflops Rate" | sed -E 's/.*: ([0-9]+)/\1/' >> "$temp_gflops"

    done
    
    calculate_average() {
        local file=$1
        awk '{sum += $1; count++} END {print sum/count}' "$file"
    }

    echo "Average gflops: $(calculate_average $temp_gflops)"

    rm "$temp_gflops" 
done
