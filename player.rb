# module for interacting with the player
module Player
  def welcome
    # puts `clear`
    puts 'Welcome to a game of Tic-Tac-Toe!'
    puts
    puts 'Player 1 plays as: X'
    puts 'Player 2 plays as: Y'
    puts
    puts 'The first player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner!'
  end

  def position_already_played
    puts "That position has already been played"
  end
end
