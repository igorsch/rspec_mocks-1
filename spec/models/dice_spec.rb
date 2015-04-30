require 'rails_helper'

describe Dice do
  describe '#value' do
    it 'returns the last rolled value' do
      die = Dice.new
      value = die.roll
      expect(value).to be_between(1, 6)
      expect(die.value).to eq(value)
      expect(die.value).to eq(value)
    end
  end
  describe '#roll' do
    it 'should return a number' do
      die = Dice.new
      expect(die.roll).to be_between(1, 6)
    end
  end
end
