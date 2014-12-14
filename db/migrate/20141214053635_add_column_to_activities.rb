class AddColumnToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :total, :string
  end
end
