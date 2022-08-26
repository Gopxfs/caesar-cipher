def caesar_cipher(string, factor)
  lower_case_alphabet = ('a'..'z').to_a
  upper_case_alphabet = ('A'..'Z').to_a
  newString = ''
  array = string.split('')

  array.each {|letter| 
    if lower_case_alphabet.include?(letter)
      alphabet = lower_case_alphabet
    elsif upper_case_alphabet.include?(letter)
      alphabet = upper_case_alphabet
    else
      newString.insert(-1, letter)
    next
    end

    index = alphabet.index(letter)
    index += factor    
    if index > 26
      index -= 26
    end

    letter = alphabet[index]
    newString.insert(-1, letter)
}

return newString
end
