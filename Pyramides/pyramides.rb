if (ARGV.length != 2)
  puts "#{__FILE__} require two arguments : #{__FILE__} number_of_pyramides number_of_floors"
  exit
end


def pyramide
 etages_nb = ARGV[1].to_i
 i = 0
 while ( i < etages_nb)
   print ' ' * (etages_nb - i - 1)
   print '#' * (i + 1)
   print '#' * (i + 1)
   print '|'
   print '#' * (i + 1)
   print "\n"
   i += 1
 end
end

pyramides_nb = ARGV[0].to_i

pyramides_nb.times do
       print pyramide
end
