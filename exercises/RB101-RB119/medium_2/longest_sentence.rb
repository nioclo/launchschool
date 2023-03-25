def longest_sentence(str)
  sentence_array = str.gsub(/\n/, " ").gsub(/(?<=[.?!])\s+(?=\w)/, "").split(/(?<=[.?!])/)
  max_words = 0
  longest_sentence_index = 0

  sentence_array.each_with_index do |item, index|
    size = item.scan(/[^\s.?!]+/).size
    if size > max_words
      max_words = size
      longest_sentence_index = index
    end
  end
  
  puts "Longest sentence (containing #{max_words} words):\n#{sentence_array[longest_sentence_index]}"
end

longest_sentence(text)