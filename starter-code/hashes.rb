##############################
#### MANIPULATING HASHES ####
##############################
def character_count(word)
  char_counts = {}
  word.each_char do |char|
    char = char.downcase
  if char_counts[char].nil?
     char_counts[char] = 1
    else
      char_counts[char] += 1
    end
  end
  char_counts
end

  # takes in a string
  # counts how many times each character appears in a string
  # ignores case
  # returns the hash

## STRETCH ##
def word_count(string)
  word_counts = {}
  string.split(" ").each do|word|
    #using global subsitiution again
    word = word.downcase.gsub(/[^a-z]/i, "")
    if word_counts[word].nil?
      word_counts[word] = 1
    else
      word_counts[word] += 1
    end
  end
  word_counts
end
  
  # takes in a string
  # counts how many times a word appears in a string
  # ignores case
  # ignores characters that are not in the sequence a-z
  # returns a hash with all the words and their counts

## STRETCH ##
def most_frequent_word(string)
  word_counts = word_count(string)
  word_counts.empty? ? nil : word_counts.invert.max[1]
end 
  # takes in a string
  # finds the word in a string that appears with the most frequency
