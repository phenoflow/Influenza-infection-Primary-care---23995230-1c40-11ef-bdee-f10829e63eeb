# Chukwuma Iwundu, Clare MacRae, Eleftheria Vasileiou, 2024.

import sys, csv, re

codes = [{"code":"3555871000006115","system":"snomedct"},{"code":"301431011","system":"snomedct"},{"code":"Not added code - 5","system":"snomedct"},{"code":"3555891000006119","system":"snomedct"},{"code":"301413010","system":"snomedct"},{"code":"Not added code - 3","system":"snomedct"},{"code":"301414016","system":"snomedct"},{"code":"3555901000006115","system":"snomedct"},{"code":"1229740013","system":"snomedct"},{"code":"12721231000006111","system":"snomedct"},{"code":"1232627018","system":"snomedct"},{"code":"Not added code - 9","system":"snomedct"},{"code":"Not added code - 4","system":"snomedct"},{"code":"885271000006116","system":"snomedct"},{"code":"Not added code - 6","system":"snomedct"},{"code":"778871000006116","system":"snomedct"},{"code":"885251000006114","system":"snomedct"},{"code":"Not added code - 2","system":"snomedct"},{"code":"2609031000000111","system":"snomedct"},{"code":"H270z","system":"snomedct"},{"code":"XaeVN","system":"snomedct"},{"code":"H2700","system":"snomedct"},{"code":"H2z..","system":"snomedct"},{"code":"H2...","system":"snomedct"},{"code":"XE0ZF","system":"snomedct"},{"code":"H2701","system":"snomedct"},{"code":"H270.","system":"snomedct"},{"code":"H270100","system":"snomedct"},{"code":"H202.00","system":"snomedct"},{"code":"H270.00","system":"snomedct"},{"code":"H270.99","system":"snomedct"},{"code":"H2z..00","system":"snomedct"},{"code":"H2...00","system":"snomedct"},{"code":"H270000","system":"snomedct"},{"code":"Not added code - 5","system":"snomedct"},{"code":"301413010","system":"snomedct"},{"code":"2609031000000111","system":"snomedct"},{"code":"3555871000006115","system":"snomedct"},{"code":"3555901000006115","system":"snomedct"},{"code":"1229740013","system":"snomedct"},{"code":"Not added code - 4","system":"snomedct"},{"code":"12721231000006111","system":"snomedct"},{"code":"3555891000006119","system":"snomedct"},{"code":"778871000006116","system":"snomedct"},{"code":"Not added code - 2","system":"snomedct"},{"code":"Not added code - 3","system":"snomedct"},{"code":"301431011","system":"snomedct"},{"code":"Not added code - 6","system":"snomedct"},{"code":"885271000006116","system":"snomedct"},{"code":"Not added code - 9","system":"snomedct"},{"code":"885251000006114","system":"snomedct"},{"code":"301414016","system":"snomedct"},{"code":"1232627018","system":"snomedct"},{"code":"H2700","system":"snomedct"},{"code":"H2701","system":"snomedct"},{"code":"XaeVN","system":"snomedct"},{"code":"H270.","system":"snomedct"},{"code":"XE0ZF","system":"snomedct"},{"code":"H2z..","system":"snomedct"},{"code":"H270z","system":"snomedct"},{"code":"H2...","system":"snomedct"},{"code":"H270.99","system":"snomedct"},{"code":"H202.00","system":"snomedct"},{"code":"H270100","system":"snomedct"},{"code":"H2z..00","system":"snomedct"},{"code":"H270.00","system":"snomedct"},{"code":"H270000","system":"snomedct"},{"code":"H2...00","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('influenza-infection-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["influenza-infection-primary-care-bronchopneumonia---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["influenza-infection-primary-care-bronchopneumonia---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["influenza-infection-primary-care-bronchopneumonia---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
