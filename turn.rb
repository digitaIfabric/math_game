module MathGame
  class Turn
    # Initialize turn
    def initialize active_player
      @number1 = rand(1..20)
      @number2 = rand(1..20)
      @answer = @number1 + @number2
      ask_question(active_player)
    end

    def ask_question(active)
      puts "#{active.id} what is #{@number1} plus #{@number2} ?"
      # Use gets.chomp to get input from users and puts for output
      p_answer = gets.chomp.to_i

      # Check if right or wrong answer
      if (p_answer == @answer)
        puts "#{active.id}: YOU ROCK!"
      else
        puts "#{active.id}: WRONG!"
        active.lives -= 1
      end

    end
  end
end