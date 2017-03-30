require_relative 'player'
class Game

  attr_reader :players, :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def switch_turns
    self.current_turn = opponent_of(current_turn)
  end

  def other_player
    opponent_of(current_turn)
  end

  def attack(player)
    player.receive_damage
  end

private

attr_writer :current_turn

def opponent_of(the_player)
  @players.select { |player| player != the_player }.first # what is this?
end
end
