def print_row(grid_size, distance_from_center)
  puts(("*" * ((2 * distance_from_center) + 1)).center(grid_size))
end

def diamond(n)
  ((n-1)/2).times do |i|
    print_row(n, i)
  end
  ((n-1)/2).downto(0) do |i|
    print_row(n, i)
  end
end

diamond(9)
