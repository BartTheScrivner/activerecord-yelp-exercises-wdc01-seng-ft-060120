class DishTag < ActiveRecord::Base 
 belongs_to :dish 
 belongs_to :tag
 attr_accessor :dish_id, :tag_id
end 