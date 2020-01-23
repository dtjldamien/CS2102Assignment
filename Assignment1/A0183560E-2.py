import csv
import math

dict = {}

with open('resale-flat-prices.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    for row in csv_reader:
        town = row[1]
        if town in dict:
            arr = dict.get(town)
            town = arr[0]
            numTransactions = int(arr[1]) + 1
            currPSM = math.ceil(float(row[9]) / float(row[6])) 
            maxPSM = max(currPSM, int(arr[2]))
            avgPSM = math.ceil((int(arr[3]) * int(arr[1]) + currPSM) / (numTransactions))
            minPSM = min(currPSM, int(arr[4]))
            dict[town] = [town, numTransactions, maxPSM, avgPSM, minPSM]
        else: 
            town = row[1]
            numTransactions = 1
            currPSM = math.ceil(float(row[9]) / float(row[6])) 
            maxPSM = currPSM
            avgPSM = currPSM
            minPSM = currPSM
            dict[town] = [town, numTransactions, maxPSM, avgPSM, minPSM]

    with open('q2-output.csv', 'w', newline='') as output:
        csv_writer = csv.writer(output)

        for line in sorted(dict.values(), key=lambda x: x[3], reverse=True):
            csv_writer.writerow(line)