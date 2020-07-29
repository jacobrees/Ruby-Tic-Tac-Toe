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
      player1_turn = gets.chomp
      @@player1_turns << player1_turn.to_i
      count += 1
      test_winner
      break if count == 9
      puts "#{@player2} turn"
      puts 'Pick any avaliable number 1 to 9'
      board
      player2_turn = gets.chomp
      @@player2_turns << player2_turn.to_i
      count += 1
      test_winner
    end
    game_draw if count == 9
  end

  def start
    welcome
    play
  end
end

game = TicTacToe.new
game.start
