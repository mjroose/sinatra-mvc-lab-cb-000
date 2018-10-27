require 'pry'

class PigLatinizer
  def initialize(user_phrase)
    @words = user_phrase.split(" ")

  end

  def piglatinize
    pl_words = @words.collect do |word|
      if starts_with_vowel?(word)
        pl_word = piglatinize_vowel_word(word)
      else
        pl_word = word
      end
    end
    binding.pry
  end

  def starts_with_vowel?(word)
    !!word.match(/\A[aeiouAEIOU]/)
  end

  def piglatinize_vowel_word(word)
    word + "way"
  end
end

PigLatinizer.new("Once upon a time the quick brown fox jumped over the lazy dog").piglatinize
