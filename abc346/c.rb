n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

sum = ((1 + k) * k) / 2
puts sum - a.uniq.select { |aa| aa <= k }.sum
