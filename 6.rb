# write me code here

# splits string into an array of words, discards anything that is not a letter (including punctuation), downcases all words, and removes duplicates
def normalize_word_array(word_array)
  normalized_word_array = []
  word_array.each do |word|
    normalized_word = word.downcase.gsub(/[^a-zA-Z]/, '')
    normalized_word_array << normalized_word unless normalized_word_array.include? normalized_word
  end
  return normalized_word_array
end

# create an empty array to store unique words
unique_words = []

# open the file and read line by line
File.open('sonnets.txt').each do |line|
  # convert the line into a word array, normalize it, and add the words to the unique words array
  unique_words.concat(normalize_word_array(line.split))
end

# print the number of unique words
puts "There are #{unique_words.size} unique words in Shakespeare's sonnets."
