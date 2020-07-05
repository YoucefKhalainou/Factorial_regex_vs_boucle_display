
if(ARGV.length < 1)
    puts"#{__FILE__} requires one argument: #{__FILE__} number"
    exit
end

def factoriel(number)
    if (number <= 1) 
        return 1         
    else  
        return number*factoriel(number-1) 
    end        
end

number = ARGV[0].to_i

result = factoriel(number).to_s.reverse

position = 0
new_result = ""
 
while(position < result.length)
    new_result += result[position]
    if ((position +1)%3 == 0)
        new_result += ","    
    end
    position += 1    
end

puts new_result.reverse 

