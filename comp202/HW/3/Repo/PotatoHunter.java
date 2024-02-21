import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.Stack;

class PotatoHunter {
    // Define class to hold coordinates
    private static class Cell {
        int x;
        int y;

        public Cell(int x, int y) {
            this.x = x;
            this.y = y;
        }

        public int getX() {
            return x;
        }

        public void setX(int x) {
            this.x = x;
        }

        public int getY() {
            return y;
        }

        public void setY(int y) {
            this.y = y;
        }
    }

    // Directions to go to adjacent cells
    private static final int[][] directions = {
            {1, 0}, // Right
            {0, 1}, // Top
            {-1, 0}, // Left
            {0, -1} // Bottom
    };

    public static void main(String[] args) throws java.lang.Exception {
        // Initialize reader
        BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

        // Get number of rows and columns
        int rows = Integer.parseInt(reader.readLine());
        int cols = Integer.parseInt(reader.readLine());

        // Get farm representation
        char[][] farm = new char[rows][cols];
        for (int i = 0; i < rows; i++) {
            farm[i] = reader.readLine().toCharArray();
        }

        // Get number of starting positions
        int positions = Integer.parseInt(reader.readLine());

        // Loop over starting positions
        for (int i = 0; i < positions; i++) {
            // Get starting coordinates
            String[] startingPos = reader.readLine().split(" ");
            int startingX = Integer.parseInt(startingPos[0]) - 1; // Use 0-based indexing
            int startingY = Integer.parseInt(startingPos[1]) - 1;

            // Calculate and print result
            int result = countPotatoes(rows, cols, farm, startingX, startingY);
            System.out.println(result);
        }

    }

    public static int countPotatoes(int rows, int cols, char[][] farm, int startingX, int startingY) {
        // Default value for a boolean is false
        var visited = new boolean[rows][cols];

        // Initialize stack
        var stack = new Stack<Cell>();

        // Starting position is guaranteed to be an empty cell
        stack.push(new Cell(startingX, startingY));

        var potatoes = 0;

        while (!stack.isEmpty()) {
            var pos = stack.pop();
            var x = pos.getX();
            var y = pos.getY();

            // Do not revisit any visited cell
            if (visited[x][y]) continue;
            // Mark the cell as visited
            visited[x][y] = true;

            // Loop over adjacent cells
            for (var dir : directions) {
                // Get changes in each coordinate based on direction
                var cx = dir[0];
                var cy = dir[1];

                // Get coordinates of adjacent cell
                var adjX = x + cx;
                var adjY = y + cy;

                // Skip invalid coordinates
                if (adjX < 0 || adjX >= rows || adjY < 0 || adjY >= cols) continue;

                if (farm[adjX][adjY] == '*') potatoes++; // We found a potato
                else stack.push(new Cell(adjX, adjY)); // Schedule visit to empty neighbor
            }
        }

        return potatoes;
    }
}
