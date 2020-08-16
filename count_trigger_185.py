from collections import Counter
import csv

#count trigger times in the process
with open('Command_Part1\XYPT_Part01_L0185.csv','r') as csvfile:
    trig=csv.reader(csvfile,delimiter=',')
    a=[]
    for row in trig:
        a.append((row[3]))
    dict={}
    for key in a:
        dict[key]=dict.get(key,0)+1
print(dict)


