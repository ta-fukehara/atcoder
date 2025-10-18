n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)

(1..n).to_a.permutation.each do |per|
  ok = []
  (0...n).each do |i|
    if per[i] == -1 || per[i] == arr[i]
      ok << true
    else
      ok << false
    end
  end
  p per
  p ok
  if ok.all?
    puts "Yes"
    puts per.join(" ")
    exit
  end
end

puts "No"
