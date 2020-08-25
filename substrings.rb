def substrings(str_input, dict)
  str = ' ' + str_input.downcase + ' ' # need these spaces for the counting to always work
  list = {}

  dict.each do |word|
    word_frequency = str.split(word).length - 1
    list[word] = word_frequency unless word_frequency < 1
  end

  list
end

dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"]

p substrings("below", dictionary) # => {"below"=>1, "low"=>1}
p substrings("Howdy partner, sit down! How's it going?", dictionary) # => {"down"=>1, "go"=>1, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}