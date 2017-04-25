package csv;

import java.io.*;
import java.util.*;
import java.lang.*;

public class coordinateFilteringZoom2 {
	public static void main(String [] args) {
		String fileName = "stops_coordinates_and_id's.csv"; // file name
		String outFile = "filtered_stops_v2.csv"; // output file
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
				if ((lat > -27.57734664477497 && 
						lat < -27.363731044774966) &&
						(lon < 153.10211177362686 &&
								lon > 152.9516029291824)) {
					outputStream.println(data);
					outputStream.flush();
				}
			}
			outputStream.close();
			System.out.println("done: v2");
			inputStream.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace(); //Error if file is not found
		}
	}
}
