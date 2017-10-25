require_relative 'pieces/piece'
require_relative 'pieces/bishop'
require_relative 'pieces/king'
require_relative 'pieces/knight'
require_relative 'pieces/pawn'
require_relative 'pieces/queen'
require_relative 'pieces/rook'
require_relative 'pieces/null'
require_relative 'pieces/stepable'
require_relative 'pieces/slideable'

# class Piece
#   attr_reader :board, :color
#   attr_accessor :pos
#
#   def initialize(color, board, pos)
#     #raise 'invalid color' unless [:white, :black].include?(color)
#     #raise 'invalid pos' unless board.valid_pos?(pos)
#
#     @color, @board, @pos = color, board, pos
#
#     #board.add_piece(self, pos)
#   end
#
#   def to_s
#     " #{symbol} "
#   end
#
#   # def empty?
#   #   self.is_a?(NullPiece) ? true : false
#   # end
#   #
#   def symbol
#     # subclass implements this with unicode chess char
#     raise NotImplementedError
#   end
#   #
#   # def valid_moves
#   #   moves.reject { |end_pos| move_into_check?(end_pos) }
#   # end
#   #
#   # private
#   #
#   # def move_into_check?(end_pos)
#   #   test_board = board.dup
#   #   test_board.move_piece!(pos, end_pos)
#   #   test_board.in_check?(color)
#   # end
# end
