n = gets.chomp.to_i
arr = []
(n*2).times do
  arr << gets.chomp
end

arr1, arr2 = arr.each_slice(n).to_a

ans1_index = 0
n.times do |i|
  if arr1[i] != arr2[i]
    ans1_index = i
  end
end

ans2_index = 0
n.times do |i|
  if arr1[ans1_index][i] != arr2[ans1_index][i]
    ans2_index = i
  end
end

puts [ans1_index+1, ans2_index+1].join(" ")
