class Recipe

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def ingredients
    #this line returns the list of recipe ingredients
   ri_list =  RecipeIngredient.all.select {|ri| ri.recipe == self}
   #this line returns the list of ingredients from the list above
   ri_list.map { |ri| ri.ingredient }
  end

  def users
    user_list = RecipeCard.all.select{|rc| rc.recipe == self}
    user_list.map { |rc| rc.user }
  end
  # - `Recipe#users`
  # should return the user instances who have recipe cards with this recipe

  def add_ingredients(ingredients)
    #took the ingredients argument and looped over them each time
    #I use a variable of an ingredient (i) and connect the recipe(self)
    #to the ingredient instance.
    ingredients.each { |i| RecipeIngredient.new(self, i) }
  end

end


### `Recipe`
# Build the following methods on the Recipe class

# - `Recipe.most_popular`
# should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
# - `Recipe#allergens`
# should return all of the ingredients in this recipe that are allergens
# - `Recipe#add_ingredients`
# should take an array of ingredient instances as an argument,
# and associate each of those ingredients with this recipe
