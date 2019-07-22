require 'pry'

def anagram?(word1, word2)
  word1.chars.sort == word2.chars.sort
end

def has_joiner?(word1, word2)
  word1[-1] == word2[0]
end

def build_dictionary(filepath)
  File.read(filepath).split("\n")
end
