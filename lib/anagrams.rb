class Words_check
  def initialize(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_check
    first_word = @word1
    second_word = @word2
    first_word = first_word.gsub(/[^a-zA-Z]/, "")
    second_word = second_word.gsub(/[^a-zA-Z]/, "")

    sorted_first = first_word.downcase.split('').sort.join
    sorted_second = second_word.downcase.split('').sort.join


    if sorted_first.scan(/[aeiou]/).count>=1 && sorted_second.scan(/[aeiou]/).count>=1
      if (first_word === first_word.reverse && sorted_first === sorted_second)||(second_word === second_word.reverse && sorted_first === sorted_second)
        "Your word is a palindrome and an anagram."
      elsif sorted_first === sorted_second
        "Anagram!"
      elsif first_word.chars.none?{|letters|second_word[letters]}===true
          "Your words are antigrams"
      else
        "Nope, these are not anagrams"
      end
    else
      "Not a real word"
    end
  end
end
