# rubocop:disable Lint/Void
# Description/Explanation of the Player class
class Player
  attr_accessor :player_sign, :name, :warning
  def initialize
    @name
    @player_sign
    @warning
  end

  def valid_player_name(name)
    puts name.is_a? String
    if name.length.zero?
      self.warning = 'Name cannot be empty'
      return false
    end
    if name.length > 10
      self.warning = 'Name can not exceed 10 characters'
      return false
    end
    true
  end
end
# rubocop:enable Lint/Void
