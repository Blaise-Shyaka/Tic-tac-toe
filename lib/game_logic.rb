class TicTacToe
  attr_accessor :player1, :player2, :board, :winning_moves

  def initialize
    @board = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']
    @player1
    @player2
		@winning_moves = {}
	end

	def update_board(player, input)
		player1_move_sign = 'X'
		player2_move_sign = 'O'
		
		if player == player1
			self.board[self.board.index(input)] = player1_move_sign
		end

		if player == player2
			self.board[self.board.index(input)] = player2_move_sign
		end

		self.winning_moves = {
			move1: [self.board[0], self.board[1], self.board[2]],
      move2: [self.board[3], self.board[4], self.board[5]],
      move3: [self.board[6], self.board[7], self.board[8]],
      move4: [self.board[0], self.board[3], self.board[6]],
      move5: [self.board[1], self.board[4], self.board[7]],
      move6: [self.board[2], self.board[5], self.board[8]],
      move7: [self.board[0], self.board[4], self.board[8]],
      move8: [self.board[2], self.board[4], self.board[6]]
		}
	end

	def winner_move
		return self.winning_moves.has_value?(["X", "X", "X"]) || self.winning_moves.has_value?(["O", "O", "O"])
	end
	
	def valid_move? input
		(input != 'x' || input != 'o') && (self.board.include? input)
  end
end
