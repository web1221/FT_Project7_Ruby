require('rspec')
require('anagram')
require('pry')

describe("#anagram_checker") do
  it("returns 'enter a vaild word' if inputed word doesn't include a vowel") do
    anagram = Anagrams.new("twsdqz", "ttwr")
    expect(anagram.anagram_checker()).to(eq('Enter a vaild word'))
  end
  it("returns 'enter a vaild word' if letters in word repeat more than 2 times") do
    anagram = Anagrams.new("hey", "hey")
    expect(anagram.anagram_checker()).to(eq('These are the same word'))
  end
  it("remove white space from phrases and words being tested") do
    anagram = Anagrams.new("till there ", "anagram")
    expect(anagram.anagram_checker()).to(eq('tillthere'))
  end
  it("should account for mix-matching cases") do
    anagram = Anagrams.new("Hey ThEre PEoPle", "anagram")
    expect(anagram.anagram_checker()).to(eq('heytherepeople'))
  end
  it("should check to see if a word is an antigram") do
    anagram = Anagrams.new("week", "hat")
    expect(anagram.anagram_checker()).to(eq('These are antigrams'))
  end
  it("should check to see if a word or phrase is an anagram") do
    anagram = Anagrams.new("Tom Marvolo Riddle", "I am Lord Voldemort")
    expect(anagram.anagram_checker()).to(eq('These are anagrams'))
  end
end
