class Anagrams
  def initialize(word, word_checked)
    @word = word.gsub(/\s+/, "").downcase()
    @word_checked = word_checked.gsub(/\s+/, "").downcase()
  end

  def anagram_checker()
    if @word.scan(/[aeiouy]/).count == 0
      return "enter a vaild word"
    elsif @word.count(@word_checked) == 0
      return "These are antigrams"
    end

    @word
  end
end
