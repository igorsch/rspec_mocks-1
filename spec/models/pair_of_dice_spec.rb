require 'rails_helper'

describe PairOfDice do
  let(:dice1) { instance_double('Dice', value: dice_1_value, roll: nil) }
  let(:dice2) { instance_double('Dice', value: dice_2_value, roll: nil) }
  subject { PairOfDice.new(dice1, dice2) }
  describe '#snake_eyes?' do
    before(:each) do
      subject.roll
    end
    context 'when the dice do not match' do
      let(:dice_1_value) { 5 }
      let(:dice_2_value) { 1 }
      it 'returns false' do
        expect(subject.snake_eyes?).to be_falsy
      end
    end
    context 'when the dice do match' do
      context 'when one dice is 1' do
        let(:dice_1_value) { 1 }
        let(:dice_2_value) { 1 }
        it 'returns true' do
          expect(subject.snake_eyes?).to be_truthy
        end
      end
      context 'when once dice is not 1' do
        let(:dice_1_value) { 5 }
        let(:dice_2_value) { 5 }
        it 'returns false' do
          expect(subject.snake_eyes?).to be_falsy
        end
      end
    end
  end
end
