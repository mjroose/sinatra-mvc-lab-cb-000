class PigLatinizer
  def initialize(user_phrase)
    @words = user_input.split(" ")
  end

  def piglatinize
    @text
  end

  def starts_with_vowel?(word)
    !!word.match(/\A[aeiouAEIOU]/)
  end
end
