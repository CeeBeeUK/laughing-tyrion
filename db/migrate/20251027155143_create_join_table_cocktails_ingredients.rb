class CreateJoinTableCocktailsIngredients < ActiveRecord::Migration[8.1]
  def change
    create_join_table :cocktails, :ingredients, id: :uuid, column_options: { type: :uuid } do |t|
      t.primary_key :id, :uuid
      t.float :quantity
      t.string :measurement

      t.index [ :cocktail_id, :ingredient_id ]
    end
  end
end
