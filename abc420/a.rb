x, y = gets.chomp.split.map(&:to_i)

sum = x + y
if sum % 12 == 0
  puts 12
elsif sum > 12
  puts sum % 12
else
  puts sum
end
