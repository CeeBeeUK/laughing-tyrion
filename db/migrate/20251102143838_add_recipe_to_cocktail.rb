class AddRecipeToCocktail < ActiveRecord::Migration[8.1]
  def change
    add_column :cocktails, :recipe, :text
  end
end
