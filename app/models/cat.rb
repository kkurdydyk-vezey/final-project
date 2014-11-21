class Cat < ActiveRecord::Base
  belongs_to :breed
  validates :name, :age, :colour, :price, :rescue_date, presence: true
  validates :price, numericality: { greater_than_or_equal_to: 0.01 }
  
end
