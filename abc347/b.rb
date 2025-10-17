s = gets.chomp.split("")

results = []
0..(s.size).times do |i|
  (i + 1)..(s.size).times do |j|
    tmp = s[i..j].join
    results << tmp if tmp != ""
  end
end

puts results.uniq.compact.size
