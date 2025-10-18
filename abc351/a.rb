a = gets.chomp.split.map(&:to_i).sum
b = gets.chomp.split.map(&:to_i).sum

puts (a-b).abs + 1
