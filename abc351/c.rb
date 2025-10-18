n = gets.chomp.to_i
arr = gets.chomp.split.map(&:to_i)

stack = []
arr.each do |x|
  stack << x

  while stack.size >= 2
    top = stack[-1]
    second = stack[-2]
    break if top != second

    stack.pop
    stack.pop
    stack << top + 1
  end
end

puts stack.size
