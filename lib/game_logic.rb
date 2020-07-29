# frozen_string_literal: true

module GameLogic
  @@player1_turns = []
  @@player2_turns = []
  @@winning_possibilities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  @@win = false
  @@taken_turns = @@player1_turns + @@player2_turns

  def test_winner
    @@winning_possibilities.each do |possible_win|
      puts "#{@player1} win" if possible_win.difference(@@player1_turns) == []
      @@win = true if possible_win.difference(@@player1_turns) == []
    end
    @@winning_possibilities.each do |possible_win|
      puts "#{@player2} win" if possible_win.difference(@@player2_turns) == []
      @@win = true if possible_win.difference(@@player2_turns) == []
    end
  end

  def test_move(player_input)
    if (1..9).include? player_input.to_i
      true
    else
      false
    end
  end
end
