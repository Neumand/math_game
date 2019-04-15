class Turn
  attr_reader :current_player, :opposing_player
  def initialize(players)
    @players = players.shuffle
    @round = 0
  end
end