class TicTacToe
    attr_accessor :player1, :player2, :board, :player1_moves, :player2
    # @@WINNING_MOVES = {
    #     move1: [board[0], board[1], board[2]]
    #     move2: [board[4], board[5], board[6]]
    #     move3: [board[7], board[8], board[9]]
    #     move4: [board[0], board[3], board[6]]
    #     move5: [board[1], board[4], board[7]]
    #     move6: [board[2], board[5], board[8]]
    #     move7: [board[0], board[4], board[8]]
    #     move8: [board[2], board[4], board[6]]
    # }

    player1_moves = []
    player2_moves = []

    def initialize
        @board = [1, 2, 3, 4, 5, 6, 7, 8, 9]
        @player1
        @player2
        @player1_moves
        @player2_moves
    end

    # Start method
        # Get players' names and store them in a variable
    def start_game
        puts "Hey Player 1, Welcome! What's your name?"
        self.player1 = gets.chomp
        puts "Alright #{self.player1}! And Player 2, What's your name?"
        self.player2 = gets.chomp
        puts "Welcome #{self.player1} and #{self.player2}"
    end

    # Print board method
        # Prints updated board
    def print_board
        puts " _________________"
        puts "|__#{self.board[0]}__|__#{self.board[1]}__|__#{self.board[2]}__|"
        puts "|__#{self.board[3]}__|__#{self.board[4]}__|__#{self.board[5]}__|"
        puts "|__#{self.board[6]}__|__#{self.board[7]}__|__#{self.board[8]}__|"
    end
    # Update board method
        # It updates the board everytime a player makes a move
    def update_board
    end

    # Win or draw method
        # It checks if the game is won or if it's a draw
    def winner_move?
    end
    # Announce winner method
        # It announces who is the winner
    def announce_winner
    end
end

game = TicTacToe.new
game.start_game
game.print_board