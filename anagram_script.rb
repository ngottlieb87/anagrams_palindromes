#!/usr/bin/env ruby
require("./lib/anagrams.rb")

puts "Type first word/sentence:"
input1=gets.chomp
puts "Type second word/sentence:"
input2=gets.chomp

checker = Anagram_check.new(input1,input2)

puts checker.words_check
