class CreateGlasses < ActiveRecord::Migration[8.1]
  def change
    create_table :glasses, id: :uuid do |t|
      t.string :name

      t.timestamps
    end

    add_reference :cocktails, :glass, null: false, foreign_key: true, type: :uuid
  end
end
