def substrings(string, dictionary)
    substrings = []
    string.length.times do |start_index|
        (start_index...string.length).each do |end_index|
            substrings.push("#{string[start_index..end_index].downcase}")
        end
    end
   substrings.find_all { |substring| dictionary.include? substring }.reduce(Hash.new(0)) do |acc, item|
        acc[item] +=1
        acc
    end
end
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("Howdy partner, sit down! How's it going?", dictionary)
