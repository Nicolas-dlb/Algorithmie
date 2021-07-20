if ARGV.empty?
   puts "#{__FILE__} require an argument : #{__FILE__} number"
   exit
end

def fact(n)
  if n == 0
    1
  else
    n * fact(n-1)
  end
end

print fact(ARGV[0].to_i), "\n"
