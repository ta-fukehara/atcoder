s = gets.chomp.split("")
hash = {}
s.each do |ss|
  if hash.key?(ss)
    hash[ss] += 1
  else
    hash[ss] = 1
  end
end

same = 0
hash.values.each do |value|
  same += (value * (value - 1)) / 2
end

total = (s.size * (s.size - 1)) / 2

if same.zero?
  puts total - same
else
  puts total - same + 1
end
