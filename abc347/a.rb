n, k = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

results = []
a.each do |aa|
  if (aa % k).zero?
    results << aa / k
  end
end

puts results.join(" ")
