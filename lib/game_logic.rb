# rubocop:disable Metrics/AbcSize
# Description/Explanation of the TicTacToe class
class TicTacToe
  attr_accessor :board, :winning_moves

  def initialize
    @board = %w[a b c d e f g h i]
    @winning_moves = {}
  end

  def update_board(player_sign, input)
    board[board.index(input)] = player_sign
    self.winning_moves = { move1: [board[0], board[1], board[2]],
                           move2: [board[3], board[4], board[5]],
                           move3: [board[6], board[7], board[8]],
                           move4: [board[0], board[3], board[6]],
                           move5: [board[1], board[4], board[7]],
                           move6: [board[2], board[5], board[8]],
                           move7: [board[0], board[4], board[8]],
                           move8: [board[2], board[4], board[6]] }
  end

  def winner_move
    winning_moves.value?(%w[X X X]) || winning_moves.value?(%w[O O O])
  end

  def valid_move?(input)
    (input != 'x' || input != 'o') && (board.include? input)
  end

  def print_board
    "
  _________________
 |__#{board[0]}__|__#{board[1]}__|__#{board[2]}__|
 |__#{board[3]}__|__#{board[4]}__|__#{board[5]}__|
 |__#{board[6]}__|__#{board[7]}__|__#{board[8]}__|

 "
  end
end
# rubocop:enable Metrics/AbcSize
