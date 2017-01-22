# Your code here
def serial_average(input)
    s = input[0,4]
    x = input[4,5]
    y = input[10,5]
    z = ((x.to_f + y.to_f) / 2).round(2)
    return "#{s}#{z}"
end
