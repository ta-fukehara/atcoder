arr = []
loop do
  arr << gets.chomp.to_i
  break if arr.last.zero?
end

puts arr.reverse.join("\n")
