n, q = gets.chomp.split.map(&:to_i)
chiryo = gets.chomp.split.map(&:to_i)

ha = Array.new(n) {true}

chiryo.each do |c|
  ha[c-1] = !ha[c-1]
end

p ha.count {|h| h }

