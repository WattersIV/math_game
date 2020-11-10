class Question 
  
  def set_numbers 
    @number_1 =  1 + rand(39) 
    @number_2 =  1 + rand(39) 
    @answer = @number_1 + @number_2
  end   

  def ask_question(player) 
    puts "#{player} What does #{@number_1} + #{@number_2} equal?" 
    response = gets.chomp.to_i
    if response == @answer 
      puts "Correct! You are so awesome, #{player}." 
      return true
    else 
      puts "Wrong! You are not that awesome, #{player}."
      return false
    end 

  end


  attr_accessor :number_1, :number_2, :answer, :response

end 