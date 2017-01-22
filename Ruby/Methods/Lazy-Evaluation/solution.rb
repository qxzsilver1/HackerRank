require 'prime.rb'

n = gets.to_i
palindromic_array = -> (n) do 
    2.upto(Float::INFINITY).lazy.select{|i|  (i.to_s.reverse == i.to_s) && Prime.prime?(i) }.first(n)
end

print palindromic_array.(n)
