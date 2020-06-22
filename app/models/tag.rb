class Tag < ActiveRecord::Base 
  has_many :dishes, through: :dish_tags
  attr_accessor :name
  def initialize(name)
    super
    @name = name
  end

  def name=(name)
    name_arr = name.split(' ')
    if name.length < 3 || name_arr.length > 2
      puts "tags must be 3+ chars and 2 words or less"
    else
      @name = name
    end
  end

end 