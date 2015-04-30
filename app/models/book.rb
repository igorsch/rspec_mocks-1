class Book < ActiveRecord::Base
  validates :author, :title, presence: true
  validates :pages, numericality: {
      greater_than: 25,
    }
end
