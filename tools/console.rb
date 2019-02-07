require_relative '../config/environment.rb'

# Users
dana = User.new("dana")
mouni = User.new("mouni")
will = User.new("will")

# Ingredients
peanuts = Ingredient.new("peanuts")
milk = Ingredient.new("milk")
eggs = Ingredient.new("eggs")
chocolate = Ingredient.new("chocolate")

# Recipes
carrot_cake = Recipe.new("carrot cake")
choco_cake = Recipe.new("chocolate cake")
pancake = Recipe.new("pancake")
muffin = Recipe.new("muffin")

# Allergens
Allergen.new(dana, milk)
Allergen.new(dana, eggs)
Allergen.new(mouni, peanuts)
Allergen.new(will, chocolate)

# Recipe Ingredients
RecipeIngredient.new(choco_cake, milk)
RecipeIngredient.new(choco_cake, eggs)

# Recipe Cards
RecipeCard.new(will, choco_cake, 80)
RecipeCard.new(dana, carrot_cake, rand(100))
RecipeCard.new(will, pancake, 100)
RecipeCard.new(will, muffin, 90)
RecipeCard.new(will, carrot_cake, 10)

binding.pry
