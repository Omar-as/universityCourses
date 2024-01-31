
echo "==============================================================================="
echo "                Running strong scaling"
echo "==============================================================================="

make cardiacsim_c

echo "==============================================================================="
echo "                Running file study_2"
echo "==============================================================================="

for ((num_processes=1; num_processes<=16; num_processes*=2)); do
    RUNS=5

    declare -a combinations
    case $num_processes in
        1)  combinations=("1 1") ;;
        2)  combinations=("1 2" "2 1") ;;
        4)  combinations=("1 4" "2 2" "4 1") ;;
        8)  combinations=("1 8" "2 4" "4 2" "8 1") ;;
        16) combinations=("1 16" "2 8" "4 4" "8 2" "16 1") ;;
    esac

    for combo in "${combinations[@]}"; do
        read x y <<< "$combo"
        echo "Parallel version with $num_processes processes (x=$x, y=$y)"
        temp_gflops="temp_gflops_study_2.txt"
        > "$temp_gflops"

        for ((i=1; i<=RUNS; i++)); do
            output=$(mpirun -np $num_processes ./cardiacsim_c -n 1024 -t 100 -y $y -x $x)
            echo "$output" | grep "Sustained Gflops Rate" | sed -E 's/.*: ([0-9.]+)/\1/' >> "$temp_gflops"
        done

        calculate_average() {
            local file=$1
            awk '{sum += $1; count++} END {print sum/count}' "$file"
        }

        echo "Average gflops: $(calculate_average $temp_gflops)"
        rm "$temp_gflops"
    done
done

