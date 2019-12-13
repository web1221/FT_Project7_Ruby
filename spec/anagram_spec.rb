require('rspec')
require('anagram')

describe("#anagram_checker") do
  it("returns 'enter a vaild word' if inputed word doesn't include a vowel") do
    anagram = Anagram.new("trtq")
    expect(anagram.anagram_checker()).to(eq('enter a vaild word'))
  end
end
