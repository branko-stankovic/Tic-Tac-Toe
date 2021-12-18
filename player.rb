# module for interacting with the player
module Player
  def welcome
    puts `clear`
    puts 'Welcome to a game of Tic-Tac-Toe!'
    puts
    puts 'Player 1 plays as: X'
    puts 'Player 2 plays as: Y'
    puts
    puts 'The first player who succeeds in placing three of their marks in a horizontal, vertical, or diagonal row is the winner!'
  end

  def pick_side
    side = ''
    until side.upcase == 'X' || side.downcase == 'Y'
      puts 'Pick your team: X or Y?'
      side = gets.chomp
    end
    puts "You picked team #{side.upcase}!"
  end
end
