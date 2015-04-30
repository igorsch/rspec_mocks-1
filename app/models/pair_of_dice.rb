class PairOfDice
  attr_reader :dice1, :dice2

  def initialize(dice1, dice2)
    @dice1 = dice1
    @dice2 = dice2
  end

  def snake_eyes?
    dice1.value == dice2.value && dice1.value == 1
  end

  def roll
    [dice1, dice2].each(&:roll)
  end
end
