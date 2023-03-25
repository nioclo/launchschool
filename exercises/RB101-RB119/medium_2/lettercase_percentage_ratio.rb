def letter_percentages(str)
  str_length = str.size.to_f
  {
    lowercase: (str.scan(/[[:lower:]]/).size / str_length * 100).round(2), 
    uppercase: (str.scan(/[[:upper:]]/).size / str_length * 100).round(2),
    neither: (str.scan(/[^[[:upper:][:lower:]]]/).size / str_length * 100).round(2)
  }
end

p letter_percentages('abcdefGHI')