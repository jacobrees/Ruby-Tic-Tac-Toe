# frozen_string_literal: true

# rubocop:disable Style/ClassVars

module GameLogic # :nodoc:
  @@player1_turns = []
  @@player2_turns = []
  @@winning_possibilities = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [1, 5, 9], [3, 5, 7]]
  @@win = false
  @@taken_turns = []

  def test_winner
    @@winning_possibilities.each do |possible_win|
      player1_win if possible_win.difference(@@player1_turns) == []
      @@win = true if possible_win.difference(@@player1_turns) == []
      player2_win if possible_win.difference(@@player2_turns) == []
      @@win = true if possible_win.difference(@@player2_turns) == []
    end
  end

  def calculate_taken_turns
    @@taken_turns = @@player1_turns + @@player2_turns
  end

  def test_move(player_input)
    if (1..9).none? { |accepted_interger| accepted_interger == player_input.to_i }
      false
    elsif @@taken_turns.any? { |taken_turn| taken_turn == player_input.to_i }
      false
    else
      true
    end
  end
end

# rubocop:enable Style/ClassVars
