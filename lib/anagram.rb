class Anagrams
  def initialize(word)
    @word = word.gsub(/\s+/, "")
  end

  def anagram_checker()
    if @word.scan(/[aeiouy]/).count == 0
      return "enter a vaild word"
    end
    @word
  end
end
