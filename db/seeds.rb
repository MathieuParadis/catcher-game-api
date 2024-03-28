p "*" * 50
p " " * 50
p "                 STARTING SEEDING                 "
p " " * 50
p "*" * 50

p "Destroy curent data..."

Score.destroy_all

p "-" * 50
p "-" * 50

############################################
player_number = 20
player_count = 0

############################################

20.times do
  playerName = Faker::Name.name
  score = rand(1..25) * 50
  Score.create(player_name: playerName, score: score)
	player_count += 1
	system("clear")
	puts "#{player_count} records created"
	puts "|"+("█"*player_count)+(" "*(player_number-player_count))+"|"
end

puts ""
puts "Enjoy 🥃 !!!"
puts "----------->"