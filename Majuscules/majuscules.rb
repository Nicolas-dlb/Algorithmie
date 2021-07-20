if ARGV.empty?
   puts "#{__FILE__} require arguments : #{__FILE__} sentence_to_modify"
   exit
end

arguments = ARGV
lettre = arguments.first.chars.each_slice(1).to_a.map(&:join)
lettre = lettre[0]
#array = array.to_s.capitalize.gsub(/(\s+\w)/) { |stuff| stuff.upcase }
arg = arguments.to_s.each_char.to_a
array2 = arg.drop(1)
array3 = array2.each_slice(2).map(&:join)
array4 = array3.map(&:capitalize).join
puts array4.gsub(/"/, "").delete "]" ","
