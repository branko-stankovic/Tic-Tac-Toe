require_relative 'player'

class Game
  include Player
  
  def initialize
    @board = [1,2,3]
  end
end

new_game = Game.new
new_game.welcome
new_game.pick_side