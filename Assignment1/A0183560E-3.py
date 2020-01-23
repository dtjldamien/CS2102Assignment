import csv
from operator import itemgetter

listAll = []
listGood = []

with open('resale-flat-prices.csv', 'r') as csv_file:
    csv_reader = csv.reader(csv_file)

    for row in csv_reader:
        if row[1] == 'BISHAN':
            listAll.append(row)

    for x in listAll:
        xResalePrice = float(x[9])
        xFloorArea = float(x[6])
        badTransaction = False
        for y in listAll:
            yResalePrice = float(y[9])
            yFloorArea = float(y[6])
            if yResalePrice > xResalePrice and yFloorArea < xFloorArea:
                badTransaction = True
                break
            if yResalePrice == xResalePrice and yFloorArea < xFloorArea:
                badTransaction = True
                break
            if yResalePrice > xResalePrice and yFloorArea == xFloorArea:
                badTransaction = True
                break
        if badTransaction == False:
            listGood.append(x)

    with open('q3-output.csv', 'w', newline='') as output:
        csv_writer = csv.writer(output)

        for line in sorted(listGood, key=itemgetter(0)):
            csv_writer.writerow(line)

