n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

results = []
(n - 1).times do |nn|
  results << a[nn] * a[nn + 1]
end

puts results.join(" ")
