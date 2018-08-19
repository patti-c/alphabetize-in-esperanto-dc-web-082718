require 'pry'

def alphabetize(arr)
  esperanto_alphabet = "abcĉdefgĝhĥijĵklmnoprsŝtuŭvz"
  
=begin
  
  # This was all extremely redundant and didn't work but 
  # I am leaving it here as a monument to a Good Try

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
  
  return sentence_hash.keys
  
=end
  
  return arr.sort_by { |sentence|
    sentence.split('').collect do |character|
      esperanto_alphabet.index(character)
    end
  }

end