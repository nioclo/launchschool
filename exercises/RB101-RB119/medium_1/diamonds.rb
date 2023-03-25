def print_row(grid_size, distance_from_edge)
  puts(("*" * ((2 * distance_from_edge) + 1)).center(grid_size))
end

def print_outline_row(grid_size, distance_from_center)
  if distance_from_center == (grid_size - 1) / 2
    puts("*".center(grid_size))
  else
    row = "*" + " " * (grid_size - 2 - (2 * distance_from_center)) + "*"
    print(row.center(grid_size))
    puts("")
  end
end

def diamond(n)
  ((n-1)/2).times do |i|
    print_row(n, i)
  end
  ((n-1)/2).downto(0) do |i|
    print_row(n, i)
  end
end

def diamond_outline(grid_size)
  ((grid_size - 1) / 2).downto(0) do |distance_from_center|
    print_outline_row(grid_size, distance_from_center)
  end
  1.upto((grid_size - 1) / 2) do |distance_from_center|
    print_outline_row(grid_size, distance_from_center)
  end
end
diamond_outline(5)


=begin
n = 5

1 star (3 away from center)
1 star, 1 space, 1 star (2 away from center)
1 star, 3 spaces, 1 star (1 away from center)
1 start, 5 spaces, 1 star (0 away from center)
1 star, 3 spaces, 1 star (1 away from center)
1 star, 1 space, 1 star (2 away from center)
1 star (3 away from center)

distance_from_center = (grid_size - 1)/2
if distance from center == (grid_size - 1)/2:
  print 1 centered star
else:
  print star, print x spaces, print star, center entire line by grid size
  x = grid_size - 2 - (2 * distance_from_center)
=end