
class NullPiece < Piece
  include Singleton
  def initialize(position)
    @piece = " "
    @position = position
  end

  def moves()
  end

end
