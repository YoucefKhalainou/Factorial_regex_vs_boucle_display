
if(ARGV.count != 1)
    puts"#{__FILE__} requires one argument: #{__FILE__} number"
    exit
end

number = ARGV[0].to_i


def factoriel(number)
    if (number <= 1) 
        return 1         
    else  
        return number*factoriel(number-1) 
    end        
end
                

puts factoriel(number).to_s.reverse.gsub(/(\d{3})(?=\d)/, '\1,').reverse

