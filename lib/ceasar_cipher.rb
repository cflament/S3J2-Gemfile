#method to encrypt one letter
def ceasar(letter, key)
    #définition d'une upgraded_key qui fait "boucler l'alphabet"
    if (letter == letter.downcase && letter.ord + key > "z".ord) || (letter == letter.upcase && letter.ord + key > "Z".ord)
        upgraded_key = key - 26
    else upgraded_key = key
    end 
    (letter.ord + upgraded_key).chr
end

#method to encrypt a full string of words
def encrypt(string, key)
    string_array = string.split
    string_array.map! do |word|
        word_array = word.split ("")
        word_array.map! do |letter|
            ceasar(letter,key)
        end
        word = word_array.join
    end
    string_array.join(' ')
end 

puts encrypt("AaxX bbYY",2)



