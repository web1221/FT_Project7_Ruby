class Anagrams
  def initialize(word)
    @word = word
  end

  def anagram_checker()
    if @word.scan(/[aeiouy]/).count == 0
      "enter a vaild word"
    end

  end
end
