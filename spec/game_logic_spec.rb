# rubocop:disable Layout/LineLength
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

  describe 'winner_move' do
    it 'will return false if no consecutive player sign in the board' do
      expect(game.winner_move).to be false
    end

    it 'will return true if there is three consecutive player_sign on the board' do
      input = %w[a b c]
      player_sign = 'X'
      game.update_board(player_sign, input[0])
      game.update_board(player_sign, input[1])
      game.update_board(player_sign, input[2])
      expect(game.winner_move).to be true
    end
  end

  describe 'valid_move?' do
    it 'will check if the place is not taken' do
      input = 'a'
      player_sign = 'X'
      game.update_board(player_sign, input)
      expect(game.valid_move?(input)).to be false
    end

    it 'will check if selection is valid should return false' do
      input = 'k'
      expect(game.valid_move?(input)).to be false
    end

    it 'will check if selection is valid should return false' do
      input = 'c'
      expect(game.valid_move?(input)).to be true
    end
  end

  describe 'print_board' do
    it 'displays the board' do
      expect(game.print_board).to eq("\n  _________________\n |__a__|__b__|__c__|\n |__d__|__e__|__f__|\n |__g__|__h__|__i__|\n\n ")
    end
    it 'will return a string' do
      expect(game.print_board.class).to eq(String)
    end
  end

  describe '#instructions' do
    it 'Should return an array' do
      expect(game.instructions.class).to eq(Array)
    end

    it 'Should return an array of three elements' do
      expect(game.instructions.length).to eq(3)
    end

    it 'Should return an array of strings' do
      expect(game.instructions.all?(String)).to be true
    end
  end
end
# rubocop:enable Layout/LineLength
