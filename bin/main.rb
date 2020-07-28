#!/usr/bin/env ruby
# frozen_string_literal: true

class TicTacToe
  def welcome
    puts 'Enter Player-1 name'
    @player1 = gets.chomp
    puts 'Enter Player-2 name'
    @player2 = gets.chomp
  end

  def board
    puts ' 1 | 2 | 3 '
    puts '-----------'
    puts ' 4 | 5 | 6 '
    puts '-----------'
    puts ' 7 | 8 | 9 '
  end

  def play
    count = 0
    while count < 9
      puts "#{@player1} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      player1_turn = gets.chomp
      count += 1
      break if count == 9
      puts "#{@player2} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      player2_turn = gets.chomp
      count += 1
    end
  end

  def start
    welcome
    play
    game_draw
  end

  def game_draw
    puts "Draw"
    
  end
end

game = TicTacToe.new
game.start
