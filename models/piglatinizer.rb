class PigLatinizer

  def piglatinize(words)
    translated_bank = []

    words.split(" ").each do |word|
      splitted_word = word.split("")
      if splitted_word.first.downcase != "a" && splitted_word.first.downcase != "e" && splitted_word.first.downcase != "i" && splitted_word.first.downcase != "o" && splitted_word.first.downcase != "u"
        while splitted_word.first.downcase != "a" && splitted_word.first.downcase != "e" && splitted_word.first.downcase != "i" && splitted_word.first.downcase != "o" && splitted_word.first.downcase != "u"
          splitted_word << splitted_word.shift
        end
        translated_bank << splitted_word.join + "ay"
      else
        translated_bank << splitted_word.join + "way"
      end
    end

    translated_bank.join(" ")
  end
end
