#!/usr/bin/env ruby

  def board 
    puts " 1 | 2 | 3 "
    puts "-----------"
    puts " 4 | 5 | 6 "
    puts "-----------"
    puts " 7 | 8 | 9 "
  end


puts "Enter Player-1 name"
player_1 = gets.chomp
puts "Enter Player-2 name"
player_2 = gets.chomp

while true
    puts "#{player_1} turn"
    puts "Pick any avaliable number 1 to 9"
    board
    player_1_choice = gets.chomp

    puts "#{player_2} turn"
    puts "Pick any avaliable number 1 to 9"
    board
    player_2_choice = gets.chomp
end
puts "#{player_1} win!"
puts "#{player_2} win!"
puts "#{player_1} &  #{player_2} draw"