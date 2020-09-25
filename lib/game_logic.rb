class TicTacToe
    attr_accessor :player1, :player2, :board, :player1_moves, :player2
    @@WINNING_MOVES = {
        move1: [board[0], board[1], board[2]]
        move2: [board[4], board[5], board[6]]
        move3: [board[7], board[8], board[9]]
        move4: [board[0], board[3], board[6]]
        move5: [board[1], board[4], board[7]]
        move6: [board[2], board[5], board[8]]
        move7: [board[0], board[4], board[8]]
        move8: [board[2], board[4], board[6]]
    }

    player1_moves = []
    player2_moves = []

    def initialize
        @board = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i']
        @player1
        @player2
        @player1_moves
        @player2_moves
    end

    # Update board method
        # It updates the board everytime a player makes a move
		def update_board(player, input)
				player1_move_sign = 'X'
				player2_move_sign = 'O'
				# Check if input is available in the board
				return 'Choose only letters on the board other than X and O' unless board.include?(input) && (input != player1_move_sign.downcase || input != player2_move_sign.downcase)
        # Check the player who made a move 
            # In the board replace the input with a sign corresponding to the player
						# Push the input in the input to the player moves' array
				if player == player1
					board[board.index(input)] == player1_move_sign
					player1_moves.push(input)
				end

				if player == player2
					board[board.index(input)] == player2_move_sign
					player2_moves.push(input)
				end
    end

    # Win or draw method
        # It checks if the game is won or if it's a draw
		def winner_move?(input)
			# Get the last 2 elements of the player moves array and concatenate the input
			# Return Check in the resultant array exists in the winner_moves constant
    end
    # Announce winner method
        # It announces who is the winner
		def announce_winner(player, input)
			# Congratulate player if input is a winner move
    end
end

game = TicTacToe.new
game.start_game
game.print_board