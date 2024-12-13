n=int(input("Enter the limit : "))
for i in range(1,n):
    for j in range(1,i+1):
        print(i*j," ",end="")
    print()
