require "rspec"
require "pry"
require "anagrams"

describe("#anagrams") do

  it("check if two words are anagrams") do
    words = Words_check.new("tea","eat")
    expect(words.anagram_check).to(eq("Anagram!"))
  end

  it("Return true regardless of case") do
    words1 = Words_check.new("Sister","reSist")
    expect(words1.anagram_check).to(eq("Anagram!"))
  end

  it("Checks word to see if your anagram is also a palindrome") do
    words2 = Words_check.new("racecar","ccarera")
    expect(words2.anagram_check).to(eq("Your word is a palindrome and an anagram."))
  end

  it("Checks to see if word has vowels") do
    words3 = Words_check.new("ddd","dad")
    expect(words3.anagram_check).to(eq("Not a real word"))
  end
  it("Checks if words share no common letters") do
    words4 = Words_check.new("hello","byi")
    expect(words4.anagram_check).to(eq("Your words are antigrams"))
  end
  it("Removes numbers, special characters, and spaces from words") do
    words4 = Words_check.new("%2race $car","car 3#race!")
    expect(words4.anagram_check).to(eq("Your word is a palindrome and an anagram."))
  end
end
