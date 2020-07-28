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
    loop do
      puts "#{@player1} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      player1_turn = gets.chomp

      puts "#{@player2} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      player2_turn = gets.chomp
    end
  end

  def start
    welcome
    play
  end
end

game = TicTacToe.new
game.start
