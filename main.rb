test_str = "ab"
shift_factor = 1

def caeser_cipher(str, shift_num)
    lower_case_alphabet = "abcdefghijklmnopqrstuvwxyz"

    cipher_return_str = ""

    str.each_char do |c| 
        # if the lower_case_aplhabet.index(c) is equal to the last character, start the index at lower_case_alphabet[i] at the begining
        if str.include?(" ")
            cipher_return_str += " "
        elsif lower_case_alphabet.index(c) + shift_num > lower_case_alphabet.index("z")
            difference = lower_case_alphabet.index("z") - lower_case_alphabet.index(c)
            cipher_return_str += lower_case_alphabet[-1 + (shift_num - difference)]
        else
            cipher_return_str += lower_case_alphabet[lower_case_alphabet.index(c) + shift_num]
        end
    end

    p cipher_return_str
end

caeser_cipher(test_str, shift_factor)
