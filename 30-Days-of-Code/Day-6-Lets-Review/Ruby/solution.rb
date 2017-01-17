n = gets.strip.to_i
words = Array.new(n)

(0..n-1).each do |i|
    words[i] = gets.strip
end

def process(word)
    letters = word.split("")
    firstHalf = []
    secondHalf = []
    letters.each_with_index do |l, i|
        i.even? ? firstHalf << l : secondHalf << l
    end
    
    "#{firstHalf.join} #{secondHalf.join}"
end

words.each do |word|
    puts process(word)
end
