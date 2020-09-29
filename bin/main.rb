#!/usr/bin/env ruby
require_relative '../lib/game_logic'

game = TicTacToe.new
# 1. Prompt both users to give their names
puts "Player 1, what's your name?"
game.player1 = gets.chomp
puts '=============================='
puts "Awesome! Player 2, what's your name?"
game.player2 = gets.chomp
puts '=============================='
puts "Welcome #{game.player1} and #{game.player2}"
puts 'Do you want to see game instructions? [y/n]'
response = gets.chomp
# 2. If yes, print game instructions! If not, proceed with the following step.
puts 'Instructions' if response == 'y'

rounds = 0
loop do
  puts rounds
  puts "
  _________________
 |__#{game.board[0]}__|__#{game.board[1]}__|__#{game.board[2]}__|
 |__#{game.board[3]}__|__#{game.board[4]}__|__#{game.board[5]}__|
 |__#{game.board[6]}__|__#{game.board[7]}__|__#{game.board[8]}__|

 "
  puts "#{game.player1}, Please choose a move by typing one of the letters"
  player1_move = gets.chomp.downcase
  while (!game.valid_move? player1_move)
    puts "Wrong input #{game.player1}, Try again!"
    player1_move = gets.chomp.downcase
  end
  puts "Player one's move is #{player1_move}"
  game.update_board(game.player1, player1_move)
  puts game.winning_moves
  if game.winner_move
    puts "Player1, you won"
    break
  end
  game.update_board(game.player1, player1_move)
  #puts "player1 moves: #{game.player1_moves}"

  break puts 'Game is a draw!' if (rounds >= 4) && !game.winner_move
  puts "
  _________________
 |__#{game.board[0]}__|__#{game.board[1]}__|__#{game.board[2]}__|
 |__#{game.board[3]}__|__#{game.board[4]}__|__#{game.board[5]}__|
 |__#{game.board[6]}__|__#{game.board[7]}__|__#{game.board[8]}__|

 "
  puts "#{game.player2}, Please choose a move by typing one of the letters"
  player2_move = gets.chomp.downcase
  while (!game.valid_move? player2_move)
    puts "Wrong input #{game.player2}, Try again!"
    player2_move = gets.chomp.downcase
  end
  game.update_board(game.player2, player2_move)
  puts game.winning_moves
  if game.winner_move
    puts "Player2, you won"
    break
  end
  game.update_board(game.player2, player2_move)
  #puts "player2 moves: #{game.player2_moves}"
  rounds += 1
end
