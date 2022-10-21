SUFFIXES = %w[em é ji oc ic uche ès']

def louchebem(sentence)
  return sentence if sentence.size == 1

  louchebem_sentence = []

  split_sentence = sentence.split(/\b/)
  vowels = %w[a e i o u]
  split_sentence.each do |word|
    if word =~ /\w/
      first_vowel_index = word.chars.find_index { |letter| vowels.include? letter }
      first_consonants = word[0...first_vowel_index]
      remaining_letters = word[first_vowel_index..]
      louchebem_sentence << "l#{remaining_letters}#{first_consonants}#{SUFFIXES.sample}"
    else
      louchebem_sentence << word
    end
  end

  louchebem_sentence.join
end
