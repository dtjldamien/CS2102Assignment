import csv
import math

with open('resale-flat-prices.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    with open('q5-output.csv', 'w', newline='') as output:
        csv_writer = csv.writer(output)

        for line in csv_reader:
            if line[1] == 'YISHUN':
                # float precision error in python would affect math.ceil values
                floorArea = math.ceil(0.1 * int(line[6])+ int(line[6]))
                line[6] = str(floorArea)
                
            csv_writer.writerow(line)