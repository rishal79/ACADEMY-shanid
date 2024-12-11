L1=[1,2,3,4,5]
L2=[2,3,4,5,6]
#length of list1 and list2
if(len(l1)==len(l2)):
    print("equal length")
else:
    print("not same length")

#sum to same value
if(sum(L1)==sum(L2)):
    print("both having same sum")
else:
    print("both sum are different")

#value occur in both

l3=[i for i in L1 if i in L2]
print("common in both",l3)
