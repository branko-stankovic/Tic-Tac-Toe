require_relative 'player'

class Board 
  include Player
  attr_accessor :game_board

  def initialize
    @game_board = [1,2,3,4,5,6,7,8,9]
  end

  def display
    puts "#{@game_board[0]} | #{@game_board[1]} | #{@game_board[2]}"
    puts "_ _ _ _ _"
    puts "#{@game_board[3]} | #{@game_board[4]} | #{@game_board[5]}"
    puts "_ _ _ _ _"
    puts "#{@game_board[6]} | #{@game_board[7]} | #{@game_board[8]}"
  end

  def play(player, position)
    if is_empty?(position)
      @game_board[position - 1] = player
    else
      position_already_played
    end
  end

  def is_empty?(position)
    @game_board[position - 1] != 'X' && @game_board[position - 1] != 'Y'
  end
end