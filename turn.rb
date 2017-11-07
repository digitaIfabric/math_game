module MathGame
  class Turn
    # Initialize turn
    def initialize active_player
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @answer = @number1 + @number2
      # Ask question
    end

    def ask_question(active_player)
      puts "Player1 what is #{@number1} plus #{@number2} ?"
      # Use gets.chomp to get input from users and puts for output

      # check if gets.chomp answer == answer

      # if wrong answer
      # active_player.lives--

      # Turn

    end
  end
end