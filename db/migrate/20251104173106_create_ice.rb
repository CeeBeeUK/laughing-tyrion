class CreateIce < ActiveRecord::Migration[8.1]
  def change
    create_table :ices, id: :uuid do |t|
      t.string :name

      t.timestamps
    end

    add_reference :cocktails, :ice, null: true, foreign_key: true, type: :uuid
  end
end
