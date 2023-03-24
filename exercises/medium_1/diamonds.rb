=begin
input: n, an odd integer
output: print n x n diamond

mental model: 
start i at 0, go up to one below n
for the first line, print (n-1)/2 spaces, then print a single *
for the second line, print (n-1)/2 - 1 spaces, then print 3 *
for the third line, print (n-1)/2 - 2 spaces, then print 5 *
  ...
for the ith line, print (n-1)/2 - i spaces, then print "*" * (2 * i + 1)

1 space, 7 stars
2 spaces, 5 stars
3 spaces, 3 stars
4 spaces, 1 star

start i at (n-1)/2 - 1, go down to 0
(n-1)/2 - i spaces, 
[4]
=end

def diamond(n)
  ((n-1)/2).times do |i|
    print(" " * (((n - 1) / 2) - i), "*" * ((2 * i) + 1), "\n")
  end
  ((n-1)/2).downto(0) do |i|
    print(" " * (((n - 1) / 2) - i), "*" * ((2 * i) + 1), "\n")
  end
end

diamond(9)
