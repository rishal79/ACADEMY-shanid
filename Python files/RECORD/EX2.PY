#postive number 

list=[1,-2,4,-7,-8,9]
positive=[i for i in list[:] if(i>0)]
print(positive)

#square


square=[i**2 for i in list[:]]
print(square)

#vowels

x=input("Enter a word : ")
v=['A','a','E','e','I','i','O','o','U','u']
y=[i for i in x[:] if i in v]
print(y)


#ordinal value

word="hello"
ordinal_values=[ord(i) for i in word]
print(ordinal_values)
