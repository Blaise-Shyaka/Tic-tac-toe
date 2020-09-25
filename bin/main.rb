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

# 3. Define a dummy winning condition (NOT the real game logic)
def winner(move)
    winning_move = 'e'
    return winning_move == move
end

# 4. Repeatedly ask the players to make moves until the winning condition is met or it's a draw
rounds = 0
loop do

    puts "
 _________________
|__a__|__b__|__c__|
|__d__|__e__|__f__|
|__g__|__h__|__i__|

"
    puts "#{player1}, Please choose a move by typing one of the letters"
    player1_move = gets.chomp.downcase 
    if winner player1_move
        puts "#{player1}, Congratulations! You won."
        break
    end

    break puts "Game is a draw!" if !winner(player1_move) && rounds == 4

    puts "#{player2}, Please choose a move by typing one of the letters"
    player2_move = gets.chomp.downcase
    if winner player2_move
        puts "#{player2}, Congratulations! You won."
        break
    end

    rounds += 1
end
