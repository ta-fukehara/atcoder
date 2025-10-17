s = gets.chomp
lindex = s.index("|")
rindex = s.rindex("|")

sarr = s.split("")
sarr.slice!(lindex..rindex)
puts sarr.join("")

# AIに書き直してもらったコード
# puts gets.chomp.sub(/\|.*\|/, "")
