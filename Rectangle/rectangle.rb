if (ARGV.length != 2)
  puts "#{__FILE__} require two arguments : #{__FILE__} square_to_find data"
  exit
end


def is_it_a_match?(square_to_find, data, line, column)
  line2 = 0
  while (line2 < square_to_find.count)
    column2 = 0
    while (column2 < square_to_find[line2].count)
      if (square_to_find[line2][column2] != data[line + line2][column + column2])
        return (false)
      end
      column2 +=1
    end
  line2 += 1
 end
return (true)
end

def rectangle (square_to_find, data)
  line = 0
  c1_name = ARGV[0].split('.').first
  c2_name = ARGV[1].split('.').first
  while (line < data.count)
    column = 0
    while (column < data[line].count)
      if (data[line][column] == square_to_find.first.first)
        if (is_it_a_match?(square_to_find, data, line, column))
          puts "#{c2_name} match to #{c1_name} in position #{column},#{line}"
          return (true)
        end
      end
      column +=1
    end
  line += 1
end
puts "no match"
return (false)
end

c1 = ARGV[0]
c2 = ARGV[1]

square_to_find = []
position = 0
File.foreach(c1) { |line| square_to_find[position] = line.chomp.split('').map(&:to_i); position +=1 }
data = []
position = 0
File.foreach(c2) { |line| data[position] = line.chomp.split('').map(&:to_i); position +=1 }

rectangle(square_to_find, data)
