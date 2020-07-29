#!/usr/bin/env ruby
# frozen_string_literal: true

class TicTacToe
  @@player1_turns = []
  @@player2_turns = []
  @@winning_possibilities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]

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

  def test_winner
    @@winning_possibilities.each{|possible_win| puts "#{@player1} win"  if possible_win.difference(@@player1_turns) == [] }
    @@winning_possibilities.each{|possible_win| puts "#{@player2} win"  if possible_win.difference(@@player2_turns) == [] }
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
