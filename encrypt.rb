def encrypt(sentence)
  #split the sentence into an array of words
  encrypted_array = []
  split_sentence = sentence.upcase.split(/\b/)
  #split each word into array of letters
  split_sentence.map! do |word|
    word.chars
  end
  p split_sentence
  #create a variable containing the alphabet using range
  alphabet = ('A'..'Z').to_a

  #find the index of the same letter in the alphabet array
  split_sentence.each do |word|
    word.each do |letter|
      if alphabet.include?(letter)
        #go back three spaces into the alphabet array
        letter_index = alphabet.find_index(letter)
        letter_index -= 3
        #push the value into a new variable
        encrypted_array << alphabet[letter_index]
      else
        encrypted_array << letter
      end
    end
  end
  #join the variable and return it
  return encrypted_array.join

end
