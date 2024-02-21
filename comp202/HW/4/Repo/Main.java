import java.lang.*;
import java.io.IOException;
import java.util.Random;
import java.io.BufferedReader;
import java.io.FileReader;
import java.util.Arrays;

public class Main {
    static int getRandomNumber(int min, int max) {
        // random generator
        Random rd = new Random();
        double rand = rd.nextDouble();
        return (int) (rand * (max - min) + min);
    }

    static int[] copyArray(int[] arr) { // Helper for array copying
        int[] array_cpy = new int[arr.length];
        for (int i = 0; i < arr.length; i++) {
            array_cpy[i] = arr[i];
        }
        return array_cpy;
    }

    static int[] randArray(int size, int min,int max) { // Helper for generating rand Array
        int[] array = new int[size];
        for (int i = 0; i < array.length; i++) {
            int rand = getRandomNumber(min, max);
            array[i] = rand;
        }
        return array;
    }

    static int[] test_array(String file) throws IOException {
        int[] arr = new int[100000];
        BufferedReader bf = new BufferedReader(new FileReader(file));
        // read entire line as string
        String line = bf.readLine();
        int c = 0;
        while (line != null) {
            int in = Integer.parseInt(line);
            arr[c] = in;
            line = bf.readLine();
            c++;
        }
        bf.close();
        return arr;
    }

    static void print_head(int[] array) {
        for (int i = 0; i < 10; i++) {
            System.out.println(array[i]);
        }
    }

    static int[] generateRandomArray(int length, boolean isNormalDistribution) {
        int[] array = new int[length];
        for (int i = 0; i < length; i++) {
            int rand = isNormalDistribution ?
                generateUniformRandom(-length, length):
                generateStandardNormalRandom();
            array[i] = rand;
        }
        return array;
    }

    static int generateUniformRandom(int min, int max) {
        // Generates a random integer uniform in the range [min, max]
        Random rd = new Random();
        double rand = rd.nextDouble();
        return (int) Math.round(rand * (max - min) + min);
    }

    static int generateStandardNormalRandom() {
        // Generates a random integer with a standard normal distribution
        Random rd = new Random();
        double rand = rd.nextGaussian();
        return (int) Math.round(rand);
    }

    public static long test(
            int length,
            int runs,
            int[][] randomArrays,
            boolean isAscending,
            boolean isHeapSort,
            boolean isTopK,
            boolean isFastTopK,
            double kPercentage
    ) {
        long sumOfTimes = 0;
        for (int[] randomArray : randomArrays) {
            // Copy random array
            // Don't modify the original because it will be reused
            int[] randomCopy = Arrays.copyOf(randomArray, length);

            // Initializations
            Sort sort = new Sort();
            String algorithm = isHeapSort ? "heapsort" : "insertionsort";
            int k = (int) (kPercentage * length);
            
            // Start timer
            long start = System.currentTimeMillis();

            if (isTopK) {
                if (isFastTopK) sort.fast_topk(randomCopy, k, !isAscending, algorithm);
                else sort.topk(randomCopy, k, !isAscending, algorithm);
            } else {
                sort.sort(randomCopy, !isAscending, algorithm);
            }

            // End timer
            long finish = System.currentTimeMillis();
            
            // Calculate elapsed time
            long time = finish - start;
            sumOfTimes += time;
        }

        // Return the average time
        return sumOfTimes / runs;
    }

    public static void runTests() {
        int[] lengths = {10, 100, 1000, 10000, 100000, 1000000};
        int runsPerLength = 10;
        double kPercentage = 0.01;

        for (int length : lengths) {
            System.out.println("Length: " + length);
            System.out.println("---\n\n");

            int[][] randomArrays = new int[runsPerLength][];

            for (int j = 0; j < 2; j++) {
                boolean isNormalDistribution = j == 1;

                System.out.println("  Distribution: " + (isNormalDistribution ? "Normal" : "Uniform"));
                System.out.println("  ---\n\n");
                
                for (int i = 0; i < runsPerLength; i++) {
                    // Generate random arrays for current length
                    randomArrays[i] = generateRandomArray(length, isNormalDistribution);
                }

                // Run tests using generated arrays
                // Use the same arrays to keep comparison accurate
                for (int k = 0; k < 2; k++) {
                    boolean isTopK = k == 1;

                    for (int q = 0; q < 2; q++) {
                        boolean isFastTopK = q == 1;

                        // Don't run sort mode twice
                        if (!isTopK && isFastTopK) continue;

                        System.out.println("    Mode: " + (isTopK ? ((isFastTopK ? "FAST " : "") + "TOP-K") : "SORT"));
                        System.out.println("    ---\n\n");

                        for (int d = 0; d < 2; d++) {
                            boolean isAscending = d == 0;

                            System.out.println("      Direction: " + (isAscending ? "ASC" : "DESC"));
                            System.out.println("      ---\n\n");

                            for (int a = 0; a < 2; a++) {
                                boolean isHeapSort = a == 1;

                                System.out.println("        Algorithm: " + (isHeapSort ? "Heap" : "Insertion") + "Sort");

                                long averageRuntime = test(
                                        length,
                                        runsPerLength,
                                        randomArrays,
                                        isAscending,
                                        isHeapSort,
                                        isTopK,
                                        isFastTopK,
                                        kPercentage
                                    );

                                System.out.println("        " + averageRuntime);
                                System.out.println("        ---\n\n");
                            }
                        }
                    }
                }
            }
        }
    }

    public static void main(String[] args) throws IOException {
        boolean runCustomTests = false;
        if (runCustomTests) {
            runTests();
            return;
        }

        int LENGTH = (int) 1E5; // equivalent of 10^(Ex)
        int maximum = (int) 1E6; // maximum integer in your array
        int minimum = -maximum; // minimum integer in your array
        int k =(int) 1E3; // topK "K" value

        //autograder spesific
        boolean test = true; // make it true for autograder
        // you have to make it false to generate custom sized arrays for time analysis !
        int k_test = (int) 1E3; // do not change it
        int [] input = test_array("input.txt"); // length 1e5 you can comment out until submission
        //

        int[] array = test ? input : randArray(LENGTH,minimum,maximum);
        Sort sort = new Sort();

        int [] t_array = copyArray(array); // to avoid time to copy, generate new one before the timing operations
        long start = System.currentTimeMillis();
        sort.sort(t_array,true,"insertionsort");
        long finish = System.currentTimeMillis();
        float time = (float) (finish-start);
        // System.out.println("insertion sort took "+time+" ms.");
        print_head(sort.vals);
        sort.flush();
        start = System.currentTimeMillis();
        sort.sort(copyArray(array),false,"insertionsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("insertion sort took "+time+" ms.");
        print_head(sort.vals);

        t_array = copyArray(array); // to avoid time to copy, generate new one before the timing operations
        start = System.currentTimeMillis();
        sort.sort(t_array,true,"heapsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("heap sort took "+time+" ms.");
        print_head(sort.vals);
        sort.flush();
        start = System.currentTimeMillis();
        sort.sort(copyArray(array),false,"heapsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("heap sort took "+time+" ms.");
        print_head(sort.vals);

        t_array = copyArray(array);
        start = System.currentTimeMillis();
        sort.topk(t_array,k_test,true,"heapsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("Top"+k_test+" took "+time+" ms.");
        System.out.println(sort.inds.length + sort.vals.length);
        print_head(sort.vals);
        print_head(sort.inds);
        start = System.currentTimeMillis();
        sort.topk(copyArray(array),k_test,false,"heapsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("Top"+k_test+" took "+time+" ms.");
        System.out.println(sort.inds.length + sort.vals.length);
        print_head(sort.vals);
        print_head(sort.inds);

        t_array = copyArray(array);
        start = System.currentTimeMillis();
        sort.fast_topk(t_array,k_test,true,"heapsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("Fast-Top" + k_test + " took "+time+" ms.");
        System.out.println(sort.inds.length + sort.vals.length);
        print_head(sort.vals);
        print_head(sort.inds);
        start = System.currentTimeMillis();
        sort.fast_topk(copyArray(array),k_test,false,"heapsort");
        finish = System.currentTimeMillis();
        time = (float) (finish-start);
        // System.out.println("Fast-Top" + k_test + " took "+time+" ms.");
        System.out.println(sort.inds.length + sort.vals.length);
        print_head(sort.vals);
        print_head(sort.inds);

    }

}
