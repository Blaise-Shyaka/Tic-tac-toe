require_relative '../lib/player'

describe 'Player class' do
  let(:player) { Player.new }
  describe '#initialize' do
    it 'Should have @name as an instance variable with nil as value' do
      expect(player.name.nil?).to be true
    end

    it 'Should have @player_sign as an instance variable with nil as value' do
      expect(player.player_sign.nil?).to be true
    end

    it 'Should have @warning as an instance variable with nil as value' do
      expect(player.warning.nil?).to be true
    end
  end

  describe '#valid_player_name' do
    it 'Should return false if no name is provided' do
      name = ''
      expect(player.valid_player_name(name)).to be false
    end

    it '@warning should be assigned a message if no name is provided' do
      name = ''
      player.valid_player_name(name)
      expect(player.warning).to eq('Name cannot be empty')
    end

    it 'Should return false if name is provided but the number of characters is greater than 10' do
      name = 'my name exceeds fifteen characters'
      expect(player.valid_player_name(name)).to be false
    end

    it '@warning should be assigned a message if name is provided but its length is greater than 10' do
      name = 'my name exceeds fifteen characters'
      player.valid_player_name(name)
      expect(player.warning).to eq('Name can not exceed 10 characters')
    end

    it 'Should return true if name is provided and the number of characters is less than 10' do
      name = 'Mariana'
      expect(player.valid_player_name(name)).to be true
    end
  end
end
