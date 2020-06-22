class Restaurant < ActiveRecord::Base 
  has_many :dishes

  def self.mcdonalds
    self.all.find_by(name: "McDonalds")
  end

  def self.tenth
    self.all.find(10)
  end

  def self.with_long_names
    pp self.all.where("length(name) > 12")
  end

  def self.max_dishes
    self.all.joins(:dishes).group(:restaurant_id).order(Arel.sql("COUNT(restaurant_id) DESC")).first
  end

  def self.focused
    pp self.all.joins(:dishes).group(:restaurant_id).having("COUNT(restaurant_id) < 5")
  end
  
end 


