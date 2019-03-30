import csv


def read_csv_file(filename):
    data = []

    with open(filename, 'r') as csvFile:
        reader = csv.reader(csvFile)
        for row in reader:
            data.append(row)
        return data

    csvFile.close()