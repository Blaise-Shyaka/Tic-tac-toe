require_relative '../lib/game_logic'

describe 'TicTacToe' do
  let(:game) { TicTacToe.new }

  describe 'Game initialization' do
    it 'Should have two instance variables with a value other than nil' do
      expect(game.instance_variables).to eq(%i[@board @winning_moves])
    end

    it 'Should have a warning instance variable with nil as a value' do
      expect(game.warning).to eq(nil)
    end
	end
	
	describe '#update_board' do
		it 'Should replace the selected letter with the player sign' do
			input = 'a'
			player_sign = 'X'
			game.update_board(player_sign, input)
			expect(game.board[0]).to eq(player_sign)
		end

		it ':move2 key in the winning_moves method should include the player_sign' do
			input = 'e'
			player_sign = 'O'
			game.update_board(player_sign, input)
			expect(game.winning_moves[:move2]).to include(player_sign)
		end

		it ':move5 key in the winning_moves method should include the player_sign' do
			input = 'e'
			player_sign = 'O'
			game.update_board(player_sign, input)
			expect(game.winning_moves[:move5]).to include(player_sign)
		end

		it ':move7 key in the winning_moves method should include the player_sign' do
			input = 'e'
			player_sign = 'O'
			game.update_board(player_sign, input)
			expect(game.winning_moves[:move7]).to include(player_sign)
		end

		it ':move8 key in the winning_moves method should include the player_sign' do
			input = 'e'
			player_sign = 'O'
			game.update_board(player_sign, input)
			expect(game.winning_moves[:move8]).to include(player_sign)
		end
  end
end
