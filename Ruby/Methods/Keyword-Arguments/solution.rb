# Your code here
def convert_temp(temp, input_scale: 'celsius', **options)
    
    input = input_scale.to_sym
    output = options[:output_scale].to_sym
    
    if input == :celsius
        if output == :kelvin
            return (temp + 273.15)
        elsif output == :fahrenheit
            return (temp * 9/5) + 32
        end
    elsif input == :kelvin
        if output == :celsius
            return (temp - 273.15)
        elsif output == :fahrenheit
            return (temp - 273.15) * 9.0/5.0 + 32.0
        end
    elsif input == :fahrenheit
        if output == :celsius
            return (temp - 32.0) * 5.0/9.0
        elsif output == :kelvin
            return (temp - 32.0) * 5.0/9.0 + 273.15
        end
    else
        return temp
    end
        
end
