#!/usr/bin/env ruby
require("./lib/anagrams.rb")

puts "Type first word:"
input1=gets.chomp
puts "Type second word:"
input2=gets.chomp

checker = Words_check.new(input1,input2)

puts checker.anagram_check
