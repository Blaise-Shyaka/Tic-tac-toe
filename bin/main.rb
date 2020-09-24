#!/usr/bin/env ruby

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
# 3. Print the tic-tac-toe board and prompt the first user for their move
puts "
 _________________
|__a__|__b__|__c__|
|__d__|__e__|__f__|
|__g__|__h__|__i__|

"
puts "#{player1}, Please choose a move by typing one of the letters"
player1_move = gets.chomp
# 4. Check if the move is a win, update the board and print the updated board
puts "You won if #{player1_move} is a winning move"
puts "
 _________________
|__a__|__b__|__c__|
|__d__|__e__|__f__|
|__g__|__h__|__i__|

"
# 5. Prompt the second user for their move
puts "#{player2}, Please choose a move by typing one of the letters"
player2_move = gets.chomp
puts "You won if #{player2_move} is a winning move"
# 6. Check if the move is a win, update the board and print the updated board
# 7. Repeat the steps from 3 to 6, until it's a win or draw
