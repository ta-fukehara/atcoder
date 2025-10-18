n = gets.chomp.to_i
arr = []
n.times do
  x, y = gets.chomp.split.map(&:to_i)
  arr << [x, y]
end

arr.each_with_index do |a1, i1|
  max = 0
  min = 99999
  arr.each_with_index do |a2, i2|
    next if i1 == i2

    yu = ((a1[0] - a2[0]) ** 2) + ((a1[1] - a2[1]) ** 2)
    if max <= yu &
      max = yu
      min = [min, i2+1].min
    end
  end
  p min
end

