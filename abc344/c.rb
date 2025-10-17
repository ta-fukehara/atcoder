n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
m = gets.chomp.to_i
b = gets.chomp.split.map(&:to_i)
l = gets.chomp.to_i
c = gets.chomp.split.map(&:to_i)
q = gets.chomp.to_i
x = gets.chomp.split.map(&:to_i)

set = Set.new
a.each do |aa|
  b.each do |bb|
    c.each do |cc|
      set << aa + bb + cc
    end
  end
end

x.each do |xx|
  puts set.include?(xx) ? "Yes" : "No"
end
