def triangle(x, y, z)
  arr = [x, y, z]
  arr.sort!
  return :invalid if arr.include?(0) || arr[2] > (arr[0] + arr[1])
  return :equilateral if x == y && y == z
  return :isosceles if (x == y && z != x) || (x == z && z != y) || (z == y && x != y)
  return :scalene
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid