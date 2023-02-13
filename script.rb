dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  result = {}
  string.downcase!
  string_array = string.split(" ")
  dictionary.each do |word|
    count = 0
    string_array.each do |str|
      if str.include?(word)
        count += 1
        result["#{word}"] = count
      end
    end
  end
  puts result
  return result
end

substrings("Howdy partner, sit down! How's it going?", dictionary)