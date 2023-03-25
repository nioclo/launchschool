def triangle(x, y, z)
  angle_array = [x, y, z]
  return :invalid if angle_array.include?(0) || angle_array.sum != 180
  return :right if angle_array.include?(90)
  return :obtuse if angle_array.any? { |n| n > 90 }
  return :acute
end

p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid