# Your code here
def count_multibyte_char(str)
    count = 0
    str.each_char{|x| count += 1 if x.bytesize > 1}
    return count
end
