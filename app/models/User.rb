class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def allergens
    Allergen.all.select { |a| a.user == self }
  end

  # - `User#recipes`
  # should return all of the recipes this user has recipe cards for
  def recipes
    my_recipe_cards = RecipeCard.all.select do |rc|
      rc.user == self
    end
    my_recipe_cards.map { |rc| rc.recipe }
  end

# - `User#add_recipe_card`
# should accept a recipe instance as an argument, as well as a date and rating,
# and create a new recipe card for this user and the given recipe
  def add_recipe_card(recipe, rating)
    RecipeCard.new(self, recipe, rating)
  end

# - `User#declare_allergen`
# should accept an ingredient instance as an argument, and create a new allergen
# instance for this user and the given ingredient
def declare_allergen(ingredient)
  Allergen.new(self, ingredient)
end

# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user.
def top_three_recipes
  # need a user with more than three recipes
  # need to get the ratings of those recipes
  # want to get [pancake, muffin, choco_cake] for will
  my_recipe_cards = RecipeCard.all.select { |rc| rc.user == self }
  sorted = my_recipe_cards.sort_by { |rc| rc.rating }
  sorted = sorted.reverse
  top_three = sorted.first(3)
  top_three.map { |rc| rc.recipe }
end
# - `User#most_recent_recipe`
# should return the recipe most recently added to the user's cookbook.
end
