require 'Date'

def friday_13th(year)
  date = Date.new(year, 1, 13)
  count = 0

  loop do
    count += 1 if date.friday?
    break if date.month == 12
    date = date << -1
  end

  count
end
