#!/usr/bin/env ruby
# frozen_string_literal: true

# rubocop:disable Metrics/AbcSize
# rubocop:disable Metrics/MethodLength

require_relative '../lib/game_logic'

class TicTacToe # :nodoc:
  include GameLogic

  def welcome
    puts 'Enter Player-1 name'
    @player1 = gets.chomp
    puts 'Enter Player-2 name'
    @player2 = gets.chomp
  end

  def board
    arr_board = [1, 2, 3, 4, 5, 6, 7, 8, 9]

    @@player1_turns.each { |position| arr_board[position - 1] = 'X' }
    @@player2_turns.each { |position| arr_board[position - 1] = 'O' }

    puts " #{arr_board[0]} | #{arr_board[1]} | #{arr_board[2]}"
    puts '----------'
    puts " #{arr_board[3]} | #{arr_board[4]} | #{arr_board[5]}"
    puts '-----------'
    puts " #{arr_board[6]} | #{arr_board[7]} | #{arr_board[8]}"
  end

  def game_draw
    puts "#{@player1} & #{@player2} Draw"
  end

  def player1_win
    puts "#{@player1} Win"
  end

  def player2_win
    puts "#{@player2} Win"
  end

  def player1_turn
    puts "#{@player1} turn"
    puts 'Pick any avaliable number 1 to 9:'
    board
    loop do
      player1_turn = gets.chomp
      @@player1_turns << player1_turn.to_i if test_move(player1_turn) == true
      puts 'Invalid move! Please pick a number between 1 & 9:' if test_move(player1_turn) == false
      break if test_move(player1_turn) == true
    end
  end

  def player2_turn
    puts "#{@player2} turn"
    puts 'Pick any avaliable number 1 to 9:'
    board
    loop do
      player2_turn = gets.chomp
      @@player2_turns << player2_turn.to_i if test_move(player2_turn) == true
      puts 'Invalid move! Please pick a number between 1 & 9:' if test_move(player2_turn) == false
      break if test_move(player2_turn) == true
    end
  end

  def play
    count = 0
    while count < 9
      player1_turn
      calculate_taken_turns
      count += 1
      test_winner
      break if count == 9 || @@win == true

      player2_turn
      calculate_taken_turns
      count += 1
      test_winner
      break if @@win == true
    end
    game_draw unless @@win == true
    board
  end

  def start
    welcome
    play
  end
end

# rubocop:enable Metrics/AbcSize
# rubocop:enable Metrics/MethodLength

game = TicTacToe.new
game.start
