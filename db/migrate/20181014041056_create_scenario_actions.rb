class CreateScenarioActions < ActiveRecord::Migration[5.2]
  def change
    create_table :scenario_actions do |t|
      t.references :scenario, foreign_key: true
      t.references :action, foreign_key: true

      t.timestamps
    end
  end
end
