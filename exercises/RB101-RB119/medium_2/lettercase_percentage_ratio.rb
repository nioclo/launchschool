def letter_percentages(str)
  str_length = str.size
  lower = str.scan(/[[:lower:]]/).size.to_f
  upper = str.scan(/[[:upper:]]/).size.to_f
  neither = str.scan(/[^[[:upper:][:lower:]]]/).size.to_f
  {
    lowercase: (lower/str_length * 100).round(2), 
    uppercase: (upper/str_length * 100).round(2),
    neither: (neither/str_length * 100).round(2)
  }
end

p letter_percentages('abcdefGHI')