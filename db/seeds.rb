require 'faker'

Dish.destroy_all
Tag.destroy_all
Restaurant.destroy_all
DishTag.destroy_all

20.times do 
Restaurant.create(name: Faker::Restaurant.unique.name)
end
    
Restaurant.all.each do |restaurant|
    10.times do 
    Dish.create(name: Faker::Food.name, restaurant: restaurant)
    end
end

Tag.create(name: "Spicy")
Tag.create(name: "Kosher")
Tag.create(name: "Vegan")
Tag.create(name: "Oriental")
Tag.create(name: "Italian")
Tag.create(name: "Spanish")
Tag.create(name: "Thai")
Tag.create(name: "Korean")
Tag.create(name: "Halal")
Tag.create(name: "Vegetarian")
Tag.create(name: "Gluten-free")
Tag.create(name: "All Gluten")

# DishTag.create(dish_id: 1,tag_id: )
# DishTag.create(dish_id: 2,tag_id: )
# DishTag.create(dish_id: 3,tag_id: )
# DishTag.create(dish_id: 4,tag_id: )
# DishTag.create(dish_id: 5,tag_id: )
# DishTag.create(dish_id: 6,tag_id: )
# DishTag.create(dish_id: 7,tag_id: )
# DishTag.create(dish_id: 8,tag_id: )
# DishTag.create(dish_id: 9,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )
# DishTag.create(dish_id: ,tag_id: )

(1..30).each do |i|
    DishTag.create(dish_id: i, tag_id: rand(1..12))
end




