s = gets.chomp.split("")
hash = {}
s.each do |ss|
  if hash[ss]
    hash[ss] += 1
  else
    hash[ss] = 1
  end
end

hash.each do |key, val|
  if val == 1
    puts key
  end
end
