# Enter your code here
def mask_article(str, arr)
  arr.each {|a| str.gsub!(a,strike(a))}
  str
end

def strike s
  "<strike>#{s}</strike>"
end
