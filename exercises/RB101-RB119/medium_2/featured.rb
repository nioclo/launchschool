def numbers_repeated?(n)
  arr = n.to_s.split("")
  arr != arr.uniq
end

def featured(n)
  initial = n + 1
  while initial % 7 != 0
    initial += 1
  end
  while initial.even? || numbers_repeated?(initial)
    initial += 7
    break if initial >= 9_876_543_210
  end
  return 'There is no possible number that fulfills those requirements.' if initial >= 9_876_543_210
  initial
end
