class CreateIngredients < ActiveRecord::Migration[8.1]
  def change
    create_table :ingredients, id: :uuid do |t|
      t.string :name

      t.timestamps
    end
  end
end
