#!/usr/bin/env ruby
# frozen_string_literal: true

require_relative '../lib/game_logic'

class TicTacToe
  include GameLogic

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

  def game_draw
    puts "#{@player1} & #{@player2} Draw"
  end

  def play
    count = 0
    while count < 9
      puts "#{@player1} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      loop do
      player1_turn = gets.chomp 
      @@player1_turns << player1_turn.to_i
      break if player1_turn.valid_turn?
      end
      count += 1
      test_winner
      break if count == 9 || @@win == true
      puts "#{@player2} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      loop do
      player2_turn = gets.chomp
      @@player2_turns << player2_turn.to_i
      break if player2_turn.valid_turn?
      end
      count += 1
      test_winner
      break if @@win == true
    end
    game_draw unless @@win == true
  end

  def start
    welcome
    play
  end
end

game = TicTacToe.new
game.start
