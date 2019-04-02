class PigLatinizer
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def phrase
    phrase = text.split(" ")
  end

  def change
    sufix = 'ay'
    self.phrase.map do |word|
      if word[0].downcase.match(/[bcdfghjklmnpqrstvwxyz]/)
        headed_word = word.slice!(0).downcase + sufix
        ordway  = headed_word.prepend(word)
      else
         ordway = word + sufix
      end
      ordway
    end.join(' ')
  end
end
