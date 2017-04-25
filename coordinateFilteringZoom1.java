package csv;

import java.io.*;
import java.util.*;
import java.lang.*;

public class coordinateFilteringZoom1 {
	public static void main(String [] args) {
		String fileName = "stops_coordinates_and_id's.csv"; // file name
		String outFile = "filtered_stops_v1.csv"; // output file
		File file = new File(fileName); // define to be a file object
		try {
			Scanner inputStream = new Scanner(file); // Scan as in input stream
			PrintWriter outputStream = new PrintWriter(outFile);
			while (inputStream.hasNext()) {
				String data = inputStream.next();
				String [] values = data.split(","); // use comma -> csv file
				double lat = Double.parseDouble(values[1]);
				double lon = Double.parseDouble(values[2]); 
				// Scan through lines to create specified coordinate range
				if ((lat > -27.70520985096768 && 
						lat < -27.267838117634348) &&
						(lon < 153.17762565586273 &&
								lon > 152.8692701793195)) {
					outputStream.println(data);
					outputStream.flush();
				}
			}
			outputStream.close();
			System.out.println("done: v1");
			inputStream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace(); //Error if file is not found
		}
	}
}
