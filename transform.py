import sys

filename = sys.argv[1]

with open(filename, "r") as f:
    lines = [line.strip() for line in f.readlines()]
    headings = lines[0].split(",")
    values = lines[1].split(",")

    for i, h in enumerate(headings):
        cur_heading = h
        cur_value = values[i]
        print(f"{cur_heading},{cur_value}")