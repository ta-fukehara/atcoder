x, y = gets.chomp.split
hash = {
  "Ocelot" => 0,
  "Serval" => 1,
  "Lynx" => 2,
}

if hash[x] >= hash[y]
  puts "Yes"
else
  puts "No"
end
