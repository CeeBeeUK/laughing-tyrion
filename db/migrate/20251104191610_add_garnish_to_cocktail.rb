class AddGarnishToCocktail < ActiveRecord::Migration[8.1]
  def change
    add_column :cocktails, :garnish, :string
  end
end
