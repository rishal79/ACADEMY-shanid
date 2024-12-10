square_area=lambda a:a*a
x=int(input("Enter the length of the square:"))
print("Area of square is:",square_area(x))

area_rectangle=lambda l,b:2*l*b
y=int(input("Enter the length of the rectangle:"))
z=int(input("Enter the breadth of the rectangle: "))
print("Area of the rectangle:",area_rectangle(y,z))

area_triangle=lambda b,h:1/2*b*h
n=int(input("Enter the breadth of the triangle:"))
m=int(input("Enter the height of the triangle:"))
print("Area of the triangle:",area_triangle(n,m))
