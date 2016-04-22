# create children
def random_word
  letters = ('a'..'z').to_a
  letters.shuffle!
  letters[0,rand(3..8)].join
end

100.times do
  Child.create!(
    first_name:     random_word,
    last_name:      random_word,
    age:            rand(1 .. 18),
    date_of_birth:  rand(1.year .. 18.year).ago
  )
end

puts "Seed finished"
puts "#{Child.count} children created"