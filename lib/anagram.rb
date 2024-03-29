class Anagrams
  attr_reader :word, :word_checked

  def initialize(word, word_checked)
    @word = word.downcase
    @word_checked = word_checked.downcase
  end

  def vowel_checker?(str)
    vaild = str.split(" ").map{|w| w.scan(/[aeiouy]/).count != 0 ? true : false}
    vaild.include?(false) ? true : false
  end

  def anagram_checker()
    word = @word.gsub(/\s+/, "")
    word_checked = @word_checked.gsub(/\s+/, "")
    if vowel_checker?(@word) || vowel_checker?(@word_checked)
      "Enter a vaild word"
    elsif word == word_checked
      "These are the same words"
    elsif word.count(word_checked) == 0
      "These are antigrams"
    elsif word.split("").sort == word_checked.split("").sort()
      "These are anagrams"
    end
  end
end
