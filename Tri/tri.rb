if (ARGV.length != 1)
  puts "#{__FILE__} require arguments : #{__FILE__} numbers_to_sort"
  exit
end

liste = ARGV

def bubble_sort(liste)
for i in 0..liste.size
  for j in i+1..liste.size-1
    liste[i], liste[j] = liste[j], liste[i] if(liste[i] < liste[j])
  end
end
liste
end
puts ""
puts "            Tri par ordre décroissant"
puts ""
puts "Tri par simplicité (sort.reverse.join) : " + liste.sort.reverse.join(" ")
puts "Tri à bulle : " + bubble_sort(liste).join(" ")
puts ""
