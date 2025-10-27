class CreateCocktails < ActiveRecord::Migration[8.1]
  def change
    create_table :cocktails, id: :uuid do |t|
      t.string :name
      t.integer :rating
      t.text :variations
      t.text :notes

      t.timestamps
    end
  end
end
