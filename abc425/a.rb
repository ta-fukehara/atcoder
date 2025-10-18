n = gets.chomp.to_i
arr = []
(1..n).each do |i|
  arr << ((-1) ** i) * (i ** 3)
end

puts arr.sum
