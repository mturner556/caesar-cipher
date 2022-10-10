p "Input a string:"
test_str = gets.lstrip.rstrip
p "Input a number to shift:"
shift_factor = gets.lstrip.rstrip.to_i

def caesar_cipher(str, shift_num)
    lower_case_alphabet = "abcdefghijklmnopqrstuvwxyz"
    upper_case_alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"

    cipher_return_str = ""

    str.each_char do |c| 
        # if char is a letter, shift x number of times. Otherwise, return char.
        # if the lower_case_aplhabet.index(c) is equal to the last character, start the index at lower_case_alphabet[i] at the begining

        if lower_case_alphabet.include?(c)
            if lower_case_alphabet.index(c) + shift_num > lower_case_alphabet.index("z")
                difference = lower_case_alphabet.index("z") - lower_case_alphabet.index(c)
                cipher_return_str += lower_case_alphabet[-1 + (shift_num - difference)]
            else
                cipher_return_str += lower_case_alphabet[lower_case_alphabet.index(c) + shift_num]
            end
        elsif upper_case_alphabet.include?(c)
            if upper_case_alphabet.index(c) + shift_num > upper_case_alphabet.index("Z")
                difference = upper_case_alphabet.index("Z") - upper_case_alphabet.index(c)
                cipher_return_str += upper_case_alphabet[-1 + (shift_num - difference)]
            else
                cipher_return_str += upper_case_alphabet[upper_case_alphabet.index(c) + shift_num]
            end
        else
            cipher_return_str += c
        end
    end

    p cipher_return_str
end

caesar_cipher(test_str, shift_factor)
