def word_to_digit(word)
  input_array = word.split(/\b/)
  numbers = {
    "zero" => 0,
    "one" => 1,
    "two" => 2,
    "three" => 3,
    "four" => 4,
    "five" => 5,
    "six" => 6,
    "seven" => 7,
    "eight" => 8,
    "nine" => 9
  }
  new_sentence = []
  for word in input_array
    if numbers.keys.include?(word.downcase)
      new_sentence.push(numbers[word])
    else
      new_sentence.push(word)
    end
  end
  new_sentence.join
end

p word_to_digit('Please call me at five five five one two three four. Thanks.')