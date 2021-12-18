require_relative 'player'

class TicTacToe
  include Player
  
  def initialize
    @board = [1,2,3]
  end

  def new_game
    self.welcome
  end
end

game = TicTacToe.new
game.new_game