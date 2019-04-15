class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  # Check if player has no remaining lives
  def remaining_lives?
    lives > 0
  end

  def random_value
    rand(20) + 1
  end

  def lose_life
    @lives -= 1
  end

  def question(current_player)
    rand_1 = random_value()
    rand_2 = random_value()
    puts "#{@name}: What does #{rand_1} plus #{rand_2} equal?"
    answer = gets.chomp.to_i
    if answer == (rand_1 + rand_2)
      puts "Correct! #{rand_1} plus #{rand_2} equals #{answer}!"
    else
      puts "Uhh...WRONG!"
      current_player.lose_life
    end
  end
end