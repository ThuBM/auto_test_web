class CreateElements < ActiveRecord::Migration[5.2]
  def change
    create_table :elements do |t|
      t.string :name
      t.integer :selector_type
      t.text :selector_value

      t.timestamps
    end
  end
end
