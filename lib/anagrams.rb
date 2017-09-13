class Anagram_check
  def initialize(word1,word2)
    @word1 = word1
    @word2 = word2
  end

  def words_check
    @word1 = @word1.gsub(/[^a-zA-Z]/, "")
    @word2= @word2.gsub(/[^a-zA-Z]/, "")

    sorted_first = @word1.downcase.split('').sort.join
    sorted_second = @word2.downcase.split('').sort.join

    if sorted_first.scan(/[aeiou]/).count>=1 && sorted_second.scan(/[aeiou]/).count>=1
      if (@word1 === @word1.reverse && sorted_first === sorted_second)||(@word2 === @word2.reverse && sorted_first === sorted_second)
        "Your word is a palindrome and an anagram."
      elsif sorted_first === sorted_second
        "Anagram!"
      elsif @word1.chars.none?{|letters|@word2[letters]}===true
          "Your words are antigrams"
      else
        "Nope, these are not anagrams"
      end
    else
      "Not a real word"
    end
  end
end
