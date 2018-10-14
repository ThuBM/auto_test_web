class ChangeSomeAttributeForActionModel < ActiveRecord::Migration[5.2]
  def change
    add_column :actions, :type, :string
    rename_column :actions, :action_type, :kind
    rename_column :actions, :action_value, :value
    remove_column :actions, :position, :integer

    add_column :scenario_actions, :position, :integer
  end
end
