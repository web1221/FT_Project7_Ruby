require('rspec')
require('anagram')
require('pry')

describe("#anagram_checker") do
  it("returns 'enter a vaild word' if inputed word doesn't include a vowel") do
    anagram = Anagrams.new("twsdqz")
    expect(anagram.anagram_checker()).to(eq('enter a vaild word'))
  end
  it("remove white space from phrases and words being tested") do
    anagram = Anagrams.new("nag a ram")
    expect(anagram.anagram_checker()).to(eq('nagaram'))
  end
  it("should account for mix-matching cases") do
    anagram = Anagrams.new("Hey ThEre PEoPle")
    expect(anagram.anagram_checker()).to(eq('heytherepeople'))
  end
end
