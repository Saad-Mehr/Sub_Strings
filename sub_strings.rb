def substrings(sentence, dictionary)
    
    sentence_array = sentence.downcase.split(' ')
    substring_hash = Hash.new
    sentence_array.each do |sentence_word|
        dictionary.each do |substring|
            if sentence_word.include?(substring)
                substring_hash[substring] == nil ? substring_hash[substring] = 1 : substring_hash[substring] += 1
            end
        end
    end
    return substring_hash
end