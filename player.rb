# module for interacting with the player
module Player
  def welcome
    puts 'Welcome to a game of Tic-Tac-Toe!'
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
