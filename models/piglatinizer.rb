class PigLatinizer


  def piglatinize(arg)
    arg.split.map do |word|
      if word[0].downcase.match(/a|e|i|o|u/)
        word + 'way'
      elsif word[1].downcase.match(/a|e|i|o|u/)
        word.split('').rotate(1).push('ay').join
      elsif word[2].downcase.match(/a|e|i|o|u/)
        word.split('').rotate(2).push('ay').join
      elsif word[3].downcase.match(/a|e|i|o|u/)
        word.split('').rotate(3).push('ay').join
      end
    end.join(' ')
  end
end
