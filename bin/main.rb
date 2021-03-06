#!/usr/bin/env ruby

require_relative '../lib/game_logic'
require_relative '../lib/player'

# Initialize the game and two players instances
game = TicTacToe.new
player1 = Player.new
player2 = Player.new

# 1. Prompt both users to give their names
puts "Player 1, what's your name?"
player1.name = gets.chomp.strip
until player1.valid_player_name(player1.name)
  puts "#{player1.warning}! Try again."
  player1.name = gets.chomp.strip
end
puts '=============================='
puts "Awesome! Player 2, what's your name?"
player2.name = gets.chomp
until player2.valid_player_name(player2.name)
  puts "#{player2.warning}! Try again."
  player2.name = gets.chomp
end
puts '=============================='
puts "Welcome #{player1.name} and #{player2.name}"

# Ask Users if they want to see game instructions.
puts 'Do you want to see game instructions? [y/n]'
response = gets.chomp
if response == 'y'
  puts '====INSTRUCTIONS===='
  puts ''
  game.instructions.each { |instr| puts instr }
  puts ''
  puts '===End of instructions==='
end

rounds = 0
loop do
  puts game.print_board
  puts "#{player1.name}, Please choose a move by typing one of the letters"
  player1_move = gets.chomp.downcase
  player1.player_sign = 'X'

  until game.valid_move? player1_move
    puts "#{player1.name}, #{game.warning}. Try again!"
    player1_move = gets.chomp.downcase
  end

  game.update_board(player1.player_sign, player1_move)

  if game.winner_move
    puts game.print_board
    puts "Congratulations #{player1.name}, you won!"
    break
  end

  break puts 'Game is a draw!' if (rounds >= 4) && !game.winner_move

  puts game.print_board
  puts "#{player2.name}, Please choose a move by typing one of the letters"
  player2_move = gets.chomp.downcase
  player2.player_sign = 'O'

  until game.valid_move? player2_move
    puts "#{player2.name}, #{game.warning}. Try again!"
    player2_move = gets.chomp.downcase
  end

  game.update_board(player2.player_sign, player2_move)

  if game.winner_move
    puts game.print_board
    puts "Congratulations #{player2.name}, you won!"
    break
  end

  rounds += 1
end
