class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer       :supplier_id
      t.string        :ing_name
      t.integer       :cost
            
      t.timestamps
    end
  end
end
