dictionary = ["the", "to", "be", "and", "if", "that", "go", "good", "bad", "end"]
test_text = "The good good the bad and the ugly"

def substring(str, dict)
  str_array = str.downcase.split(" ").push
  substr = {}
  value = 0

  #Pushes dictionary into substr hash as keys with value of 0
  substr = Hash[dict.collect {|key| [key.to_s, 0]}] 

  #Iterates through substr array using str_array and each time a word from... 
  #...str_array is equal to a key it increases the value by 1
  str_array.map do |word|
    substr.map do |key, value| 
      if key == word
        substr[key] = value += 1
      end
    end
  end
  p substr
end

substring(test_text, dictionary)