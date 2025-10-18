n, q = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)

mins = []
n.times do |nn|
  mins << [a[nn], b[nn]].min
end
total = mins.sum

q.times do
  c, x, v = gets.chomp.split
  x = x.to_i
  v = v.to_i

  if c == "A"
    a[x - 1] = v
  else
    b[x - 1] = v
  end

  before = mins[x - 1]
  mins[x - 1] = [a[x - 1], b[x - 1]].min

  sabun = (before - mins[x - 1]).abs
  if before < mins[x - 1]
    total += sabun
  else
    total -= sabun
  end
  puts total
end
