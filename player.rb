class Player
  attr_accessor :name
  attr_reader :symbol

  @@players = 0

  def initialize(name)
    @name = name
    @@players += 1
    @symbol = if @@players.odd?
                'X'
              else
                'O'
              end
  end
end
