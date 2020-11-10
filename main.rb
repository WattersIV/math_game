require './player' 
require './game'
require './question'

a = Player.new('Player 1') 
b = Player.new('Player 2') 
puts "Player 1 name:"
a.name = gets.chomp 
puts "Player 2 name:"
b.name = gets.chomp
