require 'pry'

def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
  # Each sentence needs to be converted to an array 
  # of numbers based on the indexes in the esperanto 
  # alphabet. First, let's iterate through the array of
  # sentence, then each individual sentence.
  
  numeric_sentence = []
  sentence_hash = {}
  
  arr.each do |sentence|
    sentence.split('').each do |letter|
      numeric_sentence << esperanto_alphabet.index("#{letter}")
    end
    
    sentence_hash[sentence] = numeric_sentence
    
  end
  
  minimum_length = sentence_hash.values.min.length
  
  sentence_hash.map do |sentence, array|
    array.slice(0, minimum_length)
  end
  
  sentence_hash = sentence_hash.sort_by{|sentence, numbers| numbers}.to_h
  
  
  arr.sort_by |sentence|
    
  end 
  
  return sentence_hash.keys

end