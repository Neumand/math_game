class Turn
  attr_reader :current_player, :opposing_player
  def initialize(players)
    @players = players.shuffle
    @round = 0
  end

  def get_current_player
    @players.select{|player| player.remaining_lives? }.first
  end

  def next
    @round += 1
    puts
    puts "----Current turn----: #{@round}"
    @players.rotate!
  end
end