class RecipeCard

  attr_reader :user, :recipe, :date, :rating

  @@all = []

  def initialize(user, recipe, rating)
    @user = user
    @recipe = recipe
    @date = Time.now
    @rating = rating
    @@all << self
  end

  def self.all
    @@all
  end
end


# ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:
# - `RecipeCard#rating`
# should return the rating (an integer) a user has given their entry
# - `RecipeCard#user`
# should return the user to which the entry belongs
# - `RecipeCard#recipe`
# should return the recipe to which the entry belongs
