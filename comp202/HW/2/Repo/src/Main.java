import crashtable.CrashTable;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.util.*;
import java.util.stream.Collectors;

public class Main {
	public static void main(String[] args) throws IOException {
		// Table path must be provided as an argument
		if (args.length < 1) return;

		// List of array[Key, Value]
		List<String[]> data = Files.lines(Path.of(args[0].trim()))
				.map(l -> l.split("\\s+=>\\s+"))
				.collect(Collectors.toList());

		// Start testing
		var table = new CrashTable();
		var errors = 0;

		for (var i = 0; i < data.size(); i++) {
			table.put(data.get(i)[0], data.get(i)[1]);

			if (table.getSize() != i + 1) errors++;
			if (!table.get(data.get(i)[0]).equals(data.get(i)[1])) errors++;
		}
		System.out.println("Elements After Addition: " + table.getSize());

		for (var l : data) {
			if (!table.remove(l[0]).equals(l[1])) errors++;
		}
		table.remove("Not There");
		System.out.println();
		System.out.println("Elements After Removal: " + table.getSize());


		System.out.println();
		System.out.println("Total Capacity: " + table.getCapacity());
		System.out.println("Total Errors: " + errors);
	}
}