from graphics.circle import cir_area,cir_perimeter
from graphics.rect import recta_area as r_area,recta_perimeter as r_perimeter
from graphics.dgraphics.sphere import *
from graphics.dgraphics.cuboid import *

# Circle
print(f"Circle Area: {cir_area(5)}")
print(f"Circle Perimeter: {cir_perimeter(5)}")

# Rectangle
print(f"Rectangle Area: {recta_area(4,6)}")
print(f"Rectangle Perimeter: {recta_perimeter(4,6)}")

# Sphere
print(f"Sphere Area: {sphere_area(3)}")
print(f"Sphere Perimeter: {sphere_perimeter(3)}")

# Cuboid
print(f"Cuboid Area: {cub_area(2, 3, 4)}")
print(f"Cuboid Perimeter: {cub_perimeter(2, 3, 4)}")



# Step 1: Start
# Step 2: Create a package graphics with modules:
        # - rectangle: Methods for area and perimeter of a rectangle.
        # - circle: Methods for area and perimeter of a circle.
# Step 3: Create a sub-package 3D-graphics with modules:
        # - cuboid: Methods for surface area and perimeter (edge length sum) of a cuboid.
        # - sphere: Methods for surface area and circumference of a sphere.
# Step 4: Write a program to import modules using these methods:
        # Specific Method Import: Use from <module> import <method> to import specific methods.
        # Alias Import: Use from <module> import <method> as <alias> 
        # Import All Methods: Use from <module> import * to access all methods directly.
# Step 5: Call methods to calculate and print area and perimeter for each figure.
# Step 6: Stop