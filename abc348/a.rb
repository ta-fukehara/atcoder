n = gets.chomp.to_i

results = []
n.times do |nn|
  if ((nn + 1) % 3).zero?
    results << "x"
  else
    results << "o"
  end
end

puts results.join("")
