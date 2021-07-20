if ARGV.empty?
   puts "#{__FILE__} require an argument : #{__FILE__} number"
   exit
end


def fact(n)
  if (n <= 1)
    1
  else
    n * fact(n-1)
  end
end

number = ARGV[0].to_i

res = fact(number).to_s
res = res.reverse
new_res = ''

i = 0

while (i < res.length)
  new_res += res[i]
  if ((i + 1) % 3 == 0)
    new_res += ','
  end
  i += 1
end

puts new_res.reverse
