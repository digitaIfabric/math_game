# Use gets.chomp to get input from users and puts for output
# Isolate your I/O logic to one or two classes. Don't allow all your classes to interact (gets/puts) with the User
# Use puts, raise some_val.inspect, and byebug to help with debugging
# What does #{rand_num[0]} plus #{rand_num[1]} equal?
# P1 #{livesP1}/3 vs P2 #{livesP2}/3

module MathGame
  class Game

    attr_accessor :player1, :player2, :turn

  # Initialize new game
  def initialize
    # Initialize turn 1
    @turn = 0
    # 2 instances of the player class @instances
    @player1 = Player.new(1)
    @player2 = Player.new(2)
    start_turn
  end

  # Definition of new turn
  def start_turn
    puts "----- NEW TURN -----"
    @turn += 1
    if (@turn.odd?)
      active = @player1
      Turn.new(active)
    else
      active = @player2
      Turn.new(active)
    end

    if (game_over?)
      winner_message
      puts "----- GAME OVER -----"
    else
      player_lives
      start_turn
    end
  end

  # Check game over (player lives > 0)
  def game_over?
    (@player1.lives == 0) || (@player2.lives == 0)
  end

  def player_lives
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3 \n\n"
  end

  # Set the message that displays winner
  def winner_message
    if @player1.lives > @player2.lives
      puts "P1 wins with a score of #{@player1.lives}/3 \n\n"
    else
      puts "P2 wins with a score of #{@player2.lives}/3 \n\n"
    end
  end

  end
end


