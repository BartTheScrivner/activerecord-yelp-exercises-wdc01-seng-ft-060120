class Dish < ActiveRecord::Base 
  belongs_to :restaurant
  has_one :tag, through: :dish_tags
  attr_accessor :name, :restaurant
end 
