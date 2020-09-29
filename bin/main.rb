#!/usr/bin/env ruby

# rubocop:disable Lint/UselessAssignment

# 1. Prompt both users to give their names
puts "Player 1, what's your name?"
player1 = gets.chomp
puts '=============================='
puts "Awesome! Player 2, what's your name?"
player2 = gets.chomp
puts '=============================='
puts "Welcome #{player1} and #{player2}"
puts 'Do you want to see game instructions? [y/n]'
response = gets.chomp
# 2. If yes, print game instructions! If not, proceed with the following step.
puts 'Instructions' if response == 'y'

# 3. Define a dummy winning condition (NOT the real game logic)
winner = false

def announce_winner(player)
  # This function declares the winner

  puts "#{player}, Congratulations! You won."
end

# 4. Repeatedly ask the players to make moves till the win/draw condition is met
rounds = 0
loop do
  winner = true if rounds == 3

  board = "
  _________________
 |__a__|__b__|__c__|
 |__d__|__e__|__f__|
 |__g__|__h__|__i__|

 "
  puts board
  puts "#{player1}, Please choose a move by typing one of the letters"
  player1_move = gets.chomp.downcase
  if winner
    announce_winner(player1)
    break
  end

  break puts 'Game is a draw!' if !winner && rounds == 4

  puts board
  puts "#{player2}, Please choose a move by typing one of the letters"
  player2_move = gets.chomp.downcase
  if winner
    announce_winner(player2)
    break
  end

  rounds += 1
end

# rubocop:enable Lint/UselessAssignment
