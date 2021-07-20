if (ARGV.length != 2)
  puts "#{__FILE__} require two arguments : #{__FILE__} word list_of_words"
  exit
end

word = ARGV[0]
list= ARGV[1]

word1 = word.split('').sort.join('')

list_of_words = []
position = 0
File.foreach(list) { |line| list_of_words[position] = line.chomp; position += 1 }


position = 0
while (position < list_of_words.count - 1)
  if (list_of_words[position].split('').sort.join == word1)
    puts list_of_words[position]
  end
  position += 1
end
