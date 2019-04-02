class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text.downcase
  end

  def words
    words = text.split(" ")
  end

  def convert
    # if word[0].match?(/[bcdfghjklmnpqrstvwxyz]/)
    # end
    self.words.map do |word|
      if word[0].match?(/[bcdfghjklmnpqrstvwxyz]/)
        last_syllable = word.slice!(0) + "ay"
        last_syllable.prepend(word)
      else
        "yay".prepend(word)
      end
    end.join(" ")
  end

end
