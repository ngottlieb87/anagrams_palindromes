require "rspec"
require "pry"
require "anagrams"

describe("#anagrams") do

  it("check if two words are anagrams") do
    words = Anagram_check.new("tea","eat")
    expect(words.words_check).to(eq("Anagram!"))
  end

  it("Return true regardless of case") do
    words1 = Anagram_check.new("Sister","reSist")
    expect(words1.words_check).to(eq("Anagram!"))
  end

  it("Checks word to see if your anagram is also a palindrome") do
    words2 = Anagram_check.new("racecar","ccarera")
    expect(words2.words_check).to(eq("Your word is a palindrome and an anagram."))
  end

  it("Checks to see if word has vowels") do
    words3 = Anagram_check.new("dsl","bbp")
    expect(words3.words_check).to(eq("Not a real word"))
  end

  it("Checks if words share no common letters") do
    words4 = Anagram_check.new("hello","byi")
    expect(words4.words_check).to(eq("Your words are antigrams"))
  end

  it("Removes numbers, special characters, and spaces from words") do
    words5 = Anagram_check.new("%2race $car","car 3#race!")
    expect(words5.words_check).to(eq("Your word is a palindrome and an anagram."))
  end
end
