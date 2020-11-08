def run_cipher

    puts "Enter your message please"
    msg = gets.chomp
    puts "Enter value to offset alphabet?"
    offset_value = gets.to_i

    puts caesar_cipher(msg, offset_value)
end

def caesar_cipher(string, offset)

#require "pry"; binding.pry

    alphabet = [*'a'..'z']
    new_string = ""

    string.each_char do |char|
        index = alphabet.index(char.downcase)


        if alphabet.include?(char.downcase)
            if alphabet[index] == char
                new_string += alphabet[(index + offset) % 26]
            elsif alphabet[index].upcase == char
                new_string += alphabet[(index + offset) % 26].upcase
            end 
        else
            new_string += char
        end
    end

    new_string
end

run_cipher()
