import csv
from operator import itemgetter

dict = {}

with open('resale-flat-prices.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    for row in csv_reader:
        if row[1] == 'LIM CHU KANG':
            month = row[0]
            if month in dict:
                arr = dict.get(month)
                arr[1] = int(arr[1]) + 1
            else:
                arr = [month, 1]
                dict[month] = arr

    with open('q4-output.csv', 'w', newline='') as output:
        csv_writer = csv.writer(output)

        count = 0
        for line in sorted(dict.values(), key=lambda x: x[0]):
            count = line[1] + count
            line[1] = count
            csv_writer.writerow(line)