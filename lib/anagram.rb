require 'pry'
# Your code goes here!

class Anagram
    def initialize(word)
        @word = word
    end

    def match(possible_anagrams_array)
        @possible_anagrams_array = possible_anagrams_array

        @chars_array = @word.chars.sort

        @possible_anagrams_array.filter { |word| word.chars.sort == @chars_array }
    end
end


# 1) Break @word into an array of characters (.chars) @word_array
#       a) Call .sort on @word_array
# 2) In match, filter each array to find a match
#       a) Break the current string into an array of characters --> .chars
#       b) Sort the characters --> .sort
#       c) Compare it to @word_array --> ==