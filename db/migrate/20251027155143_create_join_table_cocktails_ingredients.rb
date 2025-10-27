class CreateJoinTableCocktailsIngredients < ActiveRecord::Migration[8.1]
  def change
    create_join_table :cocktails, :ingredients, column_options: { type: :uuid } do |t|
      t.float :quantity
      t.string :measurement

      t.index [ :cocktail_id, :ingredient_id ]
    end
  end
end
