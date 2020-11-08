def substrings(string, dictionary)
  count = {}
  string.downcase!

  dictionary.map { |word| count[string.match(word)[0]] = string.scan(word).length if string.match(word) != nil }
  count
end

my_dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part",
                 "partner", "sit"]
my_string = "Howdy partner, sit down! How's it going?"

puts substrings(my_string, my_dictionary)
