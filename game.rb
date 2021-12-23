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
    loop do
      @board.display
      prompt_move(@current_player)
      move = gets.chomp.to_i
      unless @board.is_empty?(move)
        next
      end
      @board.play(@current_player, move)
      if @board.is_a_tie?
        @board.display
        display_tie
        break
      end
      switch_player
    end
  end
end

game = TicTacToe.new
game.new_game