import csv
import math

with open('resale-flat-prices.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    with open('q5-output.csv', 'w', newline='') as output:
        csv_writer = csv.writer(output)

        for line in csv_reader:
            if line[1] == 'YISHUN':
                floorArea = float(line[6])
                floorArea = math.ceil(1.1 * floorArea) 
                line[6] = str(floorArea)
            csv_writer.writerow(line)