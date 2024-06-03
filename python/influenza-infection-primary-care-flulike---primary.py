# Chukwuma Iwundu, Clare MacRae, Eleftheria Vasileiou, 2024.

import sys, csv, re

codes = [{"code":"1161531000000115","system":"snomedct"},{"code":"778711000006116","system":"snomedct"},{"code":"762181000006116","system":"snomedct"},{"code":"387051000006110","system":"snomedct"},{"code":"1126551000000111","system":"snomedct"},{"code":"1128141000000118","system":"snomedct"},{"code":"1227545013","system":"snomedct"},{"code":"285858017","system":"snomedct"},{"code":"4063911000006112","system":"snomedct"},{"code":"H27z.","system":"snomedct"},{"code":"Hyu04","system":"snomedct"},{"code":"XM0s0","system":"snomedct"},{"code":"H2A..","system":"snomedct"},{"code":"H2A..11","system":"snomedct"},{"code":"H27z.11","system":"snomedct"},{"code":"H27z.12","system":"snomedct"},{"code":"4063911000006112","system":"snomedct"},{"code":"778711000006116","system":"snomedct"},{"code":"762181000006116","system":"snomedct"},{"code":"1128141000000118","system":"snomedct"},{"code":"387051000006110","system":"snomedct"},{"code":"H27z.","system":"snomedct"},{"code":"Hyu04","system":"snomedct"},{"code":"XM0s0","system":"snomedct"},{"code":"H27z.12","system":"snomedct"},{"code":"H2A..","system":"snomedct"},{"code":"H27z.11","system":"snomedct"},{"code":"H2A..11","system":"snomedct"}];
REQUIRED_CODES = 1;
with open(sys.argv[1], 'r') as file_in, open('influenza-infection-primary-care-potential-cases.csv', 'w', newline='') as file_out:
    csv_reader = csv.DictReader(file_in)
    csv_writer = csv.DictWriter(file_out, csv_reader.fieldnames + ["influenza-infection-primary-care-flulike---primary-identified"])
    csv_writer.writeheader();
    codes_identified = 0;
    for row in csv_reader:
        newRow = row.copy();
        for cell in row:
            # Iterate cell lists (e.g. codes)
            for item in re.findall(r'\(([^,]*)\,', row[cell]):
                if(item in list(map(lambda code: code['code'], codes))): codes_identified+=1;
                if(codes_identified>=REQUIRED_CODES):
                    newRow["influenza-infection-primary-care-flulike---primary-identified"] = "CASE";
                    break;
            if(codes_identified>=REQUIRED_CODES): break;
        if(codes_identified<REQUIRED_CODES):
            newRow["influenza-infection-primary-care-flulike---primary-identified"] = "UNK";
        codes_identified=0;
        csv_writer.writerow(newRow)
