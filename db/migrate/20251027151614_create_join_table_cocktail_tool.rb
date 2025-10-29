class CreateJoinTableCocktailTool < ActiveRecord::Migration[8.1]
  def change
    create_join_table :cocktails, :tools, table_name: :cocktails_tools, column_options: { type: :uuid } do |t|
      t.index [ :cocktail_id, :tool_id ]
    end
  end
end
