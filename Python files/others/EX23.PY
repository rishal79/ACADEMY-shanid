import math
p=[]
for i in range(1000,9999,2):
    a=math.sqrt(i)
    if a%1==0:
        p.append(i)
print("The values : ",p)