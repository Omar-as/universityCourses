import java.lang.*;
import java.util.PriorityQueue;
import java.util.Arrays;

public class Sort {
    public int[] vals = null;
    public int[] inds = null;

    public void flush() {
        /*
        Reset state
         */
        this.vals = null;
        this.inds = null;
    }

    public int[] getIndices(int size){
        /*
        Returns array of indices of the unsorted array input
         */
        int [] inds = new int[size];
        for (int i = 0; i < size; i++) inds[i] = i;
        return inds;
    }

    private class ArrayElement {
        int index;
        int val;

        public ArrayElement(int index, int val) {
            this.index = index;
            this.val = val;
        }
    }

    private void heapsort(int[] array, int[] inds, boolean largest) {
        // Initialization
        this.vals = array;
        this.inds = inds;

        
        var heap = new PriorityQueue<ArrayElement>(
                11,
                (a, b) -> largest ? b.val - a.val : a.val - b.val
        );

        for (int i = 0; i < array.length; i++) {
            heap.add(new ArrayElement(inds[i], array[i]));
        }

        for (int i = 0; i < array.length; i++) {
            var element = heap.poll();
            array[i] = element.val;
            inds[i] = element.index;
        }
    }

    private void insertionSort (int[] array, int[] inds, boolean largest) {
        // Initialization
        this.vals = array;
        this.inds = inds;

        // Start from the second element
        // The first element is sorted
        for (int i = 1; i < array.length; i++) {
            int element = array[i];
            int index = inds[i];

            // Move all elements larger/smaller that the current element
            int j = i - 1;
            while (j >= 0 && (largest ? array[j] < element : array[j] > element)) {
                array[j + 1] = array[j];
                inds[j + 1] = inds[j];
                j--;
            }

            // Put the current element in its place
            array[j + 1] = element;
            inds[j + 1] = index;
        }
    }

    public void sort(int[] array, boolean largest, String alg) {
        int[] inds = getIndices(array.length);
        sortHelper(array, inds, largest, alg);
    }

    private void sortHelper(int[] array, int[] inds, boolean largest, String alg) {
        if (alg.equals("heapsort")) {
            heapsort(array, inds, largest);
        } else if(alg.equals("insertionsort")) {
            insertionSort(array, inds, largest);
        }
    }

    public void topk(int[] array, int k, boolean largest, String alg){
        flush();
        sort(array, largest, alg);

        this.vals = Arrays.copyOfRange(this.vals, 0, k);
        this.inds = Arrays.copyOfRange(this.inds, 0, k);
    }

    public void fast_topk(int[] array, int k, boolean largest, String alg){
        flush();

        // Find the mean
        int max = array[0];
        int min = array[0];
        for (int i = 0; i < array.length; i++) {
            if (array[i] > max) max = array[i];
            else if (array[i] < min) min = array[i];
        }
        int mean = (max - min) / 2 + min;

        int[] inds = getIndices(array.length);
        // Eliminate half values
        int j = 0;
        for (int i = 0; i < array.length; i++) {
            if (largest ? array[i] > mean : array[i] < mean) {
                array[j] = array[i];
                inds[j] = i;
                j++;
            }
        }

        array = Arrays.copyOfRange(array, 0, j);
        inds = Arrays.copyOfRange(inds, 0, j);
        sortHelper(array, inds, largest, alg);

        this.vals = Arrays.copyOfRange(this.vals, 0, k);
        this.inds = Arrays.copyOfRange(this.inds, 0, k);
    }

}

