n = gets.chomp.to_i
hash = {}
n.times do
  a, c = gets.chomp.split.map(&:to_i)
  if hash.key?(c)
    hash[c] = [hash[c], a].min
  else
    hash[c] = a
  end
end

puts hash.values.max
