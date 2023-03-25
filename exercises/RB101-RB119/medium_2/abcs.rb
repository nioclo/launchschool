def block_word?(str)
  blocks = {
    "B" => "O",
    "G" => "T",
    "V" => "I",
    "X" => "K",
    "R" => "E",
    "L" => "Y",
    "D" => "Q",
    "F" => "S",
    "Z" => "M",
    "C" => "P",
    "J" => "W",
    "N" => "A",
    "H" => "U"
  }

  str.upcase!
  blocks.none? { |k, v| str.include?(k) && str.include?(v) }
end


p block_word?('BATCH') 
p block_word?('BUTCH') 
p block_word?('jest') 