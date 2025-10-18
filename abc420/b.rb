n, m = gets.chomp.split.map(&:to_i)
arr = []
n.times do
  arr << gets.chomp.split("").map(&:to_i)
end

results = Array.new(n) { 0 }

arr.transpose.each do |a|
  one = a.count { |aa| aa == 1 }
  zero = a.count { |aa| aa == 0 }
  if one < zero
    a.each_with_index do |a1, index|
      if a1 == 1
        results[index] += 1
      end
    end
  else
    a.each_with_index do |a1, index|
      if a1 == 0
        results[index] += 1
      end
    end
  end
end

max = results.max
results2 = []
results.each_with_index do |r, i|
  results2 << i + 1 if r == max
end

puts results2.join(" ")
