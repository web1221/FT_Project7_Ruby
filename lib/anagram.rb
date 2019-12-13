class Anagrams
  def initialize(word, word_checked)
    @word = word.gsub(/\s+/, "").downcase()
    @word_checked = word_checked.gsub(/\s+/, "").downcase()
  end

  def anagram_checker()
    if @word.scan(/[aeiouy]/).count == 0
       "enter a vaild word"
    elsif @word.count(@word_checked) == 0
       "These are antigrams"
    elsif @word.split("").sort == @word_checked.split("").sort()
      "These are anagrams"
    else
       @word
    end
  end
end
