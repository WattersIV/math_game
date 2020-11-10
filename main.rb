require './player' 
require './game'
require './question'

a = Player.new('Player 1', 3) 
b = Player.new('Player 2', 3) 
puts "Player 1 name:"
a.name = gets.chomp 
puts "Player 2 name:"
b.name = gets.chomp 
puts "Player 1 #{a.name} Player 2 #{b.name}" 
puts "Player 1 lives #{a.lives} Player 2 lives #{b.lives}" 
a.remove_life 
puts "Player 1 lives #{a.lives} Player 2 lives #{b.lives}"  
quest = Question.new() 
quest.set_numbers
if quest.ask_question(a.name) == false 
  a.remove_life 
end 
puts "Player 1 lives #{a.lives} Player 2 lives #{b.lives}"  


