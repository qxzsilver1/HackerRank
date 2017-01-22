# Enter your code here. Read input from STDIN. Print output to STDOUT
def process_text(str)
    output = ""
    str.map do |i|
        output += i.to_s.strip + " "
    end
    return output.strip
    #another way:
    #str.map(&:strip).join(" ")
end
