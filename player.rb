class Player 
  
  def initialize(name, lives)
    @name = name
    @lives = lives
  end  

  def life_left 
    return @lives 
  end 
    
  def remove_life 
    @lives -= 1
  end 

  attr_accessor :name, :lives
end
