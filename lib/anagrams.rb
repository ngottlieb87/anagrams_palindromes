#!/usr/bin/env ruby
class Words_check
  def initialize(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_check
    first_word = @word1
    second_word = @word2

    sorted_first = first_word.downcase.split('').sort.join
    sorted_second = second_word.downcase.split('').sort.join

  if((first_word === first_word.reverse && sorted_first === sorted_second)||(second_word === second_word.reverse && sorted_first === sorted_second))
    "Your word is a palindrome and an anagram."
   elsif(sorted_first === sorted_second)
      "Anagram!"
   else
     "Nope, these are not anagrams"
    end
  end
end
