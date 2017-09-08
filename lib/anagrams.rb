#!/usr/bin/env ruby
class Words_check
  def initialize(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_check
    first_word = @word1
    second_word = @word2
    sorted_first = first_word.split('').sort.join
    sorted_second = second_word.split('').sort.join

    if(sorted_first === sorted_second)
      true
    else
      false
   end
 end
end
