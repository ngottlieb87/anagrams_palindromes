require "rspec"
require "pry"
require "anagrams"

describe("#anagrams") do

  it("check if two words are anagrams") do
    words = Words_check.new("tea","eat")
    expect(words.anagram_check).to(eq(true))
  end

  it("Return true non dependant on case") do
    words = Words_check.new("Sister","reSist")
    expect(words.anagram_check).to(eq(true))
  end

  it("Return true non dependant on case") do
    words = Words_check.new("Sister","reSist")
    expect(words.anagram_check).to(eq(true))
  end

end
