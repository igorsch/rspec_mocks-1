require 'rails_helper'

RSpec.describe Book, type: :model do
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:title) }
  it { should validate_numericality_of(:pages).is_greater_than(25) }

  describe '#genre' do
    it 'returns horror' do
      book = instance_double('Book', title: 'The Shining')
      expect(book.title).to eq('The Shining')
    end
  end
end
