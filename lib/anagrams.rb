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

    if(sorted_first === sorted_second)
       "These are anagrams!"
    else
       "Nope, these are not anagrams."
   end
 end
end
