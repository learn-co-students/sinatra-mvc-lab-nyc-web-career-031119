require 'pry'
class PigLatinizer

  # def String.vowel?
  #   arr = ["a", "e", "i", "o", "u"]
  #   arr.include?(self)
  # end

  def piglatinize(string)
    array = string.split(" ")
    new_array = []
    array.map do |word|
      true_word = word
      d_word = word.downcase
      i = 0
      arr = ["q", "w", "r", "t", "y", "p", "s", "d", "f", "g", "h", "j", "k", "l", "z", "x", "c", "v", "b", "n", "m", "Q", "W", "R", "T", "Y", "P", "S", "D", "F", "G", "H", "J", "K", "L", "Z", "X", "C", "V", "B", "N", "M"]
      varr = ["a", "e", "i", "o", "u"]
      if varr.include?(d_word[0])

        if d_word.capitalize == true_word

          d_word = d_word.capitalize
        end
        d_word+="w"
      end
      while arr.include?(d_word[0])
        if d_word.capitalize == true_word
          d_word = d_word.capitalize
        end
        letter = d_word[0]
        d_word.slice!(0)
        d_word += letter
      end
      pl = d_word+="ay"
      new_array << pl
    end
    new_array.join(" ")

  end

end
