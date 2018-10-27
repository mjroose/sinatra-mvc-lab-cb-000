require 'pry'

class PigLatinizer
  def initialize(user_phrase)
    @words = user_phrase.split(" ")
    binding.pry
  end

  def piglatinize
    @text
  end

  def starts_with_vowel?(word)
    !!word.match(/\A[aeiouAEIOU]/)
  end
end

PigLatinizer.new("Once upon a time, the quick brown fox jumped over the lazy dog")
