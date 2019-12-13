require('rspec')
require('anagram')
require('pry')

describe("#anagram_checker") do
  it("returns 'enter a vaild word' if inputed word doesn't include a vowel") do
    anagram = Anagrams.new("twsdqz")
    expect(anagram.anagram_checker()).to(eq('enter a vaild word'))
  end
end
