import json

def read_json_file(filename):
    with open('data.txt') as json_file:
        data = json.load(json_file)
        for p in data['people']:
            print('Name: ' + p['name'])
            print('Website: ' + p['website'])
            print('From: ' + p['from'])
            print('')
        return data

    #This is not a working example, but we can modify this according to the JSON file.