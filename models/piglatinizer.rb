class PigLatinizer

  def piglatinize(string)
    string.split(' ').map{|word| piglatinize_word(word)}.join(' ')
  end

  def piglatinize_word(word)
    consonants = []
    vowels = ['a','e','i','o','u']
    letters = word.split('')
      if vowels.include?(letters[0].downcase)
        "#{word}way"
      else
        letters.map do |letter|
        consonants << letter if !vowels.include?(letter)
        break if vowels.include?(letter)
      end
      "#{word[consonants.length..-1]}#{consonants.join}ay"
    end
  end
  
end
