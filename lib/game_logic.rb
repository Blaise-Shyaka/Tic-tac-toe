# Description/Explanation of the TicTacToe class
class TicTacToe
  attr_accessor :board, :winning_moves

  def initialize
    @board = %w[a b c d e f g h i]
    @winning_moves = {}
  end

  def update_board(player_sign, input)
    board[board.index(input)] = player_sign
    self.winning_moves = {  move1: [board[0], board[1], board[2]],
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
end
