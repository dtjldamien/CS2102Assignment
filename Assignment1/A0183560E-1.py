import csv

with open('resale-flat-prices.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    with open('q1-ouput.csv', 'w', newline='') as output:
        csv_writer = csv.writer(output)

        for line in csv_reader:
            if line[2] == '3 ROOM' and line[7] == 'ADJOINED FLAT':
                csv_writer.writerow(line)