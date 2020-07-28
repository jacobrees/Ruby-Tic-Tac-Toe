#!/usr/bin/env ruby

def board
  puts ' 1 | 2 | 3 '
  puts '-----------'
  puts ' 4 | 5 | 6 '
  puts '-----------'
  puts ' 7 | 8 | 9 '
end

puts 'Enter Player-1 name'
player1 = gets.chomp
puts 'Enter Player-2 name'
player2 = gets.chomp

player1_turns = []
player2_turns = []

loop do
  puts "#{player1} turn"
  puts 'Pick any avaliable number 1 to 9'
  board
  player1_turn = gets.chomp
  player1_turns << player1_turn

  puts "#{player2} turn"
  puts 'Pick any avaliable number 1 to 9'
  board
  player2_turn = gets.chomp
  player2_turns << player2_turn
end
puts "#{player1} win!"
puts "#{player2} win!"
puts "#{player1} &  #{player2} draw"
