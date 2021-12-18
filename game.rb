require_relative 'player'
require_relative 'board'

class TicTacToe
  include Player
  
  def initialize
    @board = Board.new
  end

  def new_game
    self.welcome
    @board.display
  end
end

game = TicTacToe.new
game.new_game