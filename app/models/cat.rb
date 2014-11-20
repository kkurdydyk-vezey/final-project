class Cat < ActiveRecord::Base
  validates :name presence: true
  validates :age presence: true
  validates :colour presence: true
  validates :price presence: true
  validates :rescue_date presence: true
end
