class Anagrams
  def initialize(word, word_checked)
    @word = word.gsub(/\s+/, "").downcase()
    @word_checked = word_checked.gsub(/\s+/, "").downcase()
  end

  def anagram_checker()
    if @word.scan(/[aeiouy]/).count == 0 || @word_checked.scan(/[aeiouy]/).count == 0
      "Enter a vaild word"
    elsif @word == @word_checked
      "These are the same words"
    elsif @word.count(@word_checked) == 0
      "These are antigrams"
    elsif @word.split("").sort == @word_checked.split("").sort()
      "These are anagrams"
    end
  end
end
