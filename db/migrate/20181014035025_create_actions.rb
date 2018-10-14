class CreateActions < ActiveRecord::Migration[5.2]
  def change
    create_table :actions do |t|
      t.string :name
      t.references :element, foreign_key: true
      t.references :group_action, foreign_key: true
      t.integer :position
      t.integer :action_type
      t.text :action_value

      t.timestamps
    end
  end
end
