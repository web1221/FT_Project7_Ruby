require('rspec')
require('anagram')
require('pry')

describe("#anagram_checker") do
  it("returns 'enter a vaild word' if inputed word doesn't include a vowel") do
    anagram = Anagrams.new("twsdqz", "")
    expect(anagram.anagram_checker()).to(eq('enter a vaild word'))
  end
  it("remove white space from phrases and words being tested") do
    anagram = Anagrams.new("nag a ram", "anagram")
    expect(anagram.anagram_checker()).to(eq('nagaram'))
  end
  it("should account for mix-matching cases") do
    anagram = Anagrams.new("Hey ThEre PEoPle", "Hey ThEre PEoPle")
    expect(anagram.anagram_checker()).to(eq('heytherepeople'))
  end
  it("should check to see if a word is an antigram") do
    anagram = Anagrams.new("week", "hat")
    expect(anagram.anagram_checker()).to(eq('These are antigrams'))
  end
end
