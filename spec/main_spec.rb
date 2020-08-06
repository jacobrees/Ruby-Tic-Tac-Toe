require 'rspec'
require './lib/game_logic.rb'

describe GameLogic do
  include GameLogic
  describe '#test_move' do
    it "returns true if given an integer between 1 & 9 that isn't included inside taken turns array" do
      @taken_turns = [1, 2, 3]
      expect(test_move(4)).to be true
    end

    it 'returns false if given an integer between 1 & 9 that is included inside taken turns array' do
      @taken_turns = [1, 2, 3]
      expect(test_move(3)).to be false
    end

    it 'returns false if given an integer larger than 9' do
      expect(test_move(10)).to be false
    end

    it 'returns false if given an integer lower than 1' do
      expect(test_move(-1)).to be false
    end

    it 'returns false if given a string' do
      expect(test_move('string')).to be false
    end
  end

  describe '#calculate_taken_turns' do
    it 'returns the @takenturns array that is equal to @player1_turns + @player2_turns' do
      @player1_turns = [1, 2]
      @player2_turns = [3, 4]
      expect(calculate_taken_turns).to eql([1, 2, 3, 4])
    end
  end
end
