require "../lib/anagrams.rb"

puts "Type first word:"
input1=gets.chomp
puts "Type second word:"
input2=gets.chomp

checker = Words_check(input1,input2)

checker.anagram_check
