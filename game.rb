require_relative 'player'
require_relative 'board'

class TicTacToe
  include Player
  
  def initialize
    @board = Board.new
    @current_player = 'X'
  end

  def switch_player
    if @current_player == 'X'
      @current_player = 'O'
    else
      @current_player = 'X'
    end
  end

  def new_game
    self.welcome
    @board.display
    @board.play(@current_player, 1)
    @board.display
    switch_player
    @board.play(@current_player, 2)
    @board.display
  end
end

game = TicTacToe.new
game.new_game