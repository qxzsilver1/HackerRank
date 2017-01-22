# Your code here
def full_name(first,*rest,last)
    a = rest.reduce(first){|x,y| "#{x} #{y}"}
    "#{a} #{last}"
end
