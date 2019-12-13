class Anagrams
  def initialize(word)
    @word = word
  end

  def anagram_checker()
    @word.gsub!(/\s+/, "")
    if @word.scan(/[aeiouy]/).count == 0
      return "enter a vaild word"
    end
    @word
  end
end
