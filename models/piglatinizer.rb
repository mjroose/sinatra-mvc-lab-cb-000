require 'pry'

class PigLatinizer
  def initialize(words = [])
    @words = words
  end

  def piglatinize(words)
    words..split(" ").collect do |word|
      if starts_with_vowel?(word)
        pl_word = piglatinize_vowel_word(word)
      else
        pl_word = piglatinize_consonant_word(word)
      end
    end.join(" ")
  end

  def starts_with_vowel?(word)
    !!word.match(/\A[aeiouAEIOU]/)
  end

  def piglatinize_vowel_word(word)
    word + "way"
  end

  def piglatinize_consonant_word(word)
    first_letter = word.slice!(0)
    word + first_letter + "ay"
  end
end

PigLatinizer.new("Once upon a time the quick brown fox jumped over the lazy dog").piglatinize
