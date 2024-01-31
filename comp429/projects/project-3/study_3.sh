
echo "==============================================================================="
echo "                Running strong scaling"
echo "==============================================================================="

make cardiacsim_c

echo "==============================================================================="
echo "                Running file study_3"
echo "==============================================================================="

for ((n=1024; n>=64; n>>=1)); do
    echo "==============================================================================="
    echo "                Running with n=$n "
    echo "==============================================================================="

    RUNS=5
    num_processes=16
    declare -a combinations
    case $num_processes in
        16) combinations=("1 16" "2 8" "4 4" "8 2" "16 1") ;;
    esac

    for combo in "${combinations[@]}"; do
        read x y <<< "$combo"
        echo "Parallel version with $num_processes processes (x=$x, y=$y)"
        temp_gflops="temp_gflops_study_3.txt"
        temp_gflops_k="temp_gflops_study_3_with_k.txt"
        > "$temp_gflops"
        > "$temp_gflops_k"

        for ((i=1; i<=RUNS; i++)); do
            output=$(mpirun -np $num_processes ./cardiacsim_c -n $n -t 100 -y $y -x $x -k)
            echo "$output" | grep "Sustained Gflops Rate" | sed -E 's/.*: ([0-9.]+)/\1/' >> "$temp_gflops_k"
            output=$(mpirun -np $num_processes ./cardiacsim_c -n $n -t 100 -y $y -x $x)
            echo "$output" | grep "Sustained Gflops Rate" | sed -E 's/.*: ([0-9.]+)/\1/' >> "$temp_gflops"
        done

        calculate_average() {
            local file=$1
            awk '{sum += $1; count++} END {print sum/count}' "$file"
        }
        avg_k=$(calculate_average $temp_gflops_k)
        avg=$(calculate_average $temp_gflops)
        diff=$(awk -v a="$avg_k" -v b="$avg" 'BEGIN { print a - b }')
        echo "Gflops Diff: $diff"
        rm "$temp_gflops" "$temp_gflops_k"
    done
done

