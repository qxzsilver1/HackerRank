def prime?(n)
   (n==1) ? false:(2...n).none? {|i| n % i == 0} 
end
