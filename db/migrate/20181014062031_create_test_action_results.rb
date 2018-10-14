class CreateTestActionResults < ActiveRecord::Migration[5.2]
  def change
    create_table :test_action_results do |t|
      t.references :scenario, foreign_key: true
      t.references :scenario_action, foreign_key: true
      t.references :test_report, foreign_key: true
      t.text :message
      t.integer :result

      t.timestamps
    end
  end
end
