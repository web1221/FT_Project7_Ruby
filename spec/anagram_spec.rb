require('rspec')
require('anagram')
require('pry')

describe("#anagram_checker") do
  it("returns 'enter a vaild word' if inputed word doesn't include a vowel") do
    anagram = Anagrams.new("twsdqz", "ttwr")
    expect(anagram.anagram_checker()).to(eq('Enter a vaild word'))
  end
  it("returns 'These are the same words' with word and word_checked match exactly") do
    anagram = Anagrams.new("hey", "hey")
    expect(anagram.anagram_checker()).to(eq('These are the same words'))
  end
  it("remove white space from phrases and words being tested") do
    anagram = Anagrams.new("Voices rant on", "Conversation")
    expect(anagram.anagram_checker()).to(eq('These are anagrams'))
  end
  it("should account for mix-matching cases") do
    anagram = Anagrams.new("SCHOOl Master", "the classroom")
    expect(anagram.anagram_checker()).to(eq('These are anagrams'))
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
