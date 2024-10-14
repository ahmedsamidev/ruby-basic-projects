

def caesar_cipher(string, key)
  alphabets =  *("a"..."z")
  last_index = alphabets.length - 1
  ciphered_string =  string.split(" ").map do |word|
    ciphered_word = word.split("").map do |chr|
      if alphabets.include?(chr.downcase)
        char_index =  alphabets.find_index(chr.downcase) 
        ciphered_char_index = char_index + key
        ciphered_char_index = last_index - char_index-1  if ciphered_char_index > last_index
        p ciphered_char_index
        ciphered_char =  alphabets[ciphered_char_index]
      chr.downcase === chr ?ciphered_char :ciphered_char.upcase
      else
        chr
      end 
    end
  ciphered_word
  end

  ciphered_string.map {|word| word.join}.join(" ")
end

p caesar_cipher("What a string!", 5)