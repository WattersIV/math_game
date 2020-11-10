class Game 
  def initialize 
    @a = Player.new('Player 1', 3) 
    @b = Player.new('Player 2', 3) 
    puts "Player 1 name:"
    @a.name = gets.chomp  
    puts "Player 2 name:"
    @b.name = gets.chomp  
    puts "Hello #{@a.name} and #{@b.name}!" 
    @round = 1
  end  
  
  def play 
    while @a.lives != 0 && @b.lives != 0 
      puts "----- NEW TURN -----" 
      if @round % 2 == 1 
        player_turn = @a 
      else 
        player_turn = @b 
      end 
      question = Question.new() 
      if question.ask_question(player_turn) == false 
        player_turn.remove_life 
        puts "#{@a.name} lives #{@a.lives} #{@b.name} lives #{@b.lives}" 
      end
      @round += 1
    end 
    @a.lives > @b.lives ? winner = @a: winner = @b 
    puts "#{winner.name} is the winner with #{winner.lives} lives remaining!"
  end
end 