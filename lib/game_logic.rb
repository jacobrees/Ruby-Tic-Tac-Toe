module GameLogic # :nodoc:
  def test_winner
    @winning_possibilities.each do |possible_win|
      player1_win if possible_win - @player1_turns == []
      @win = true if possible_win - @player1_turns == []
      player2_win if possible_win - @player2_turns == []
      @win = true if possible_win - @player2_turns == []
    end
    @win
  end

  def calculate_taken_turns
    @taken_turns = @player1_turns + @player2_turns
  end

  def test_move(player_input)
    if (1..9).none? { |accepted_interger| accepted_interger == player_input.to_i }
      false
    elsif @taken_turns.any? { |taken_turn| taken_turn == player_input.to_i }
      false
    else
      true
    end
  end
end
