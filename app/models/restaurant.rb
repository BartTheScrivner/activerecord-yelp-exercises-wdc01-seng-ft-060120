class Restaurant < ActiveRecord::Base 
  has_many :dishes
  attr_reader :name
end 