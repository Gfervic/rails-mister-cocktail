class AddCocktailToIngredients < ActiveRecord::Migration[5.0]
  def change
    add_reference :ingredients, :cocktail, foreign_key: true
  end
end
