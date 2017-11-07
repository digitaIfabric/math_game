# Use gets.chomp to get input from users and puts for output
# Isolate your I/O logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
# Use puts, raise some_val.inspect, and byebug to help with debugging
# What does #{rand_num[0]} plus #{rand_num[1]} equal?
# P1 #{livesP1}/3 vs P2 #{livesP2}/3

module MathGame
  class Game

  # Initialize new game
  def initialize game
    # Initialize turn 1
    @turn1 = Turn.new
    # 2 instances of the player class @instances
    @player1 = Player.new(P1)
    # @player2 = Player.new(P2)
    # start game MathGame.start
  end
  # Check if game over

  # Definition of new turn

  def start_game
    puts "Start of the game"
    puts "----- NEW TURN -----"


  end

  # Check game over (player lives > 0)
  def game_over?

  # Print ----- GAME OVER -----
  end



  # Set the message that displays winner
  def winner_message

  end


  end
end


