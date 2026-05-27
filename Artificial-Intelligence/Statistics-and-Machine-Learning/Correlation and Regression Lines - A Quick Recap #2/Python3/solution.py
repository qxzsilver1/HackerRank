# Enter your code here. Read input from STDIN. Print output to STDOUT

# Enter your code here. Read input from STDIN. Print output to STDOUT

import math
 
def regression_line_slope(sx, sy):
    n = len(sx)
    x, y, xy, xsq = 0, 0, 0, 0
    
    for i in range(n):
        x += sx[i]
        y += sy[i]
        xy += sx[i] * sy[i]
        xsq += sx[i] * sx[i]
    return (n * xy - x*y) / (n * xsq - x*x)
 
series_x = [15, 12, 8, 8, 7, 7, 7, 6, 5, 3]
series_y = [10, 25, 17, 11, 13, 17, 20, 13, 9, 15]

m = regression_line_slope(series_x, series_y)

print('{0:.3f}'.format(m))
