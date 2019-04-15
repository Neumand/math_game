require_relative './player'
require_relative './turn'

class Game

  def initialize
    @p1 = Player.new('Player 1')
    @p2 = Player.new('Player 2')
    @players = [@p1, @p2]
    @turn = Turn.new(@players)
  end

  def summary
    puts
    puts "#{@p1.name}: #{@p1.lives}/3 vs #{@p2.name}: #{@p2.lives}/3 "
  end

  def game_over?
    @players.select{|player| !player.remaining_lives? }.count == 1
  end

  def end_game
    winner = @players.select{|player| player.remaining_lives?}.first
    puts "#{winner.name} wins with a score of #{winner.lives}/3!"
    puts "----GAME OVER----"
    puts "Please play again!"
  end

  def run
    until (game_over?)
      @turn.next
      current_player = @turn.get_current_player
      current_player.question(current_player)
      sleep 0.7
      summary
      sleep 0.7
    end
  end_game
  end
end