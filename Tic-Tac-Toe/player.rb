class Player
  attr_accessor :name, :player_moves
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
    @player_moves = []
  end
end
