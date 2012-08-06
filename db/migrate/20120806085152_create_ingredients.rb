class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string        :ing_code
      t.string        :name
      t.integer       :cost
      t.integer       :sup_no
      
      t.timestamps
    end
  end
end
