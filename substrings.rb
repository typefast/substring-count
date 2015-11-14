def substrings(words, substring_dictionary)
  recorded_words = Hash.new(0) #create a new hash with default value
  words_to_check = words.downcase.split #downcase and split the words/string
  
  words_to_check.each do |word| #iterate through each word
    substring_dictionary.each do |other_word| #iterate through dictionary/hash words
      if word.include?(other_word) #check if one word is included in another
        recorded_words[other_word] += 1 #increment 
      end
    end
  end
  p recorded_words
end

substring_dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", substring_dictionary)
