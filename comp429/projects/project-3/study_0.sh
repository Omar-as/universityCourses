echo "==============================================================================="
echo "                Running serial"
echo "==============================================================================="

make cardiacsim_serial

echo "==============================================================================="
echo "                Running file study_0"
echo "==============================================================================="

for ((n=1024; n>=64; n>>=1)); do
    echo "==============================================================================="
    echo "                Running with n=$n "
    echo "==============================================================================="
    RUNS=5

    temp_gflops="temp_gflops_study_0.txt"

    > "$temp_gflops"

    for ((i=1; i<=RUNS; i++)); do

        output=$(./cardiacsim_serial -n $n -t 100)
        echo "$output" | grep "Sustained Gflops Rate" | sed -E 's/.*: ([0-9]+)/\1/' >> "$temp_gflops"

    done

    calculate_average() {
        local file=$1
        awk '{sum += $1; count++} END {print sum/count}' "$file"
    }

    echo "Average gflops: $(calculate_average $temp_gflops)"

    rm "$temp_gflops" 
done
