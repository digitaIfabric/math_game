module MathGame
  class Player

    # 2 attributes (id and lives)
    attr_accessor :id, :lives

    def initialize(id)
      @id = "Player #{id}"
      @lives = 3
    end

  end
end