class Cat < ActiveRecord::Base
  validates :name, :age, :colour, :price, :rescue_date, presence: true
end
