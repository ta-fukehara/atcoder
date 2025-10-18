n, q = gets.chomp.split.map(&:to_i)
versions = {}
n.times do |nn|
  versions[nn + 1] = nn + 1
end

min_version = 1
q.times do
  old_version, new_version = gets.chomp.split.map(&:to_i)
  if old_version <= min_version
    puts 0
    next
  end

  min_version = [old_version + 1, min_version].max
  p min_version

  # p versions[old_version + 1]
  # p versions
end

# p pcs
