class ChangeTotalFormatInActivities < ActiveRecord::Migration
  def change
   # change_column :activities, :total, :integer

    remove_column :activities, :total
    add_column :activities, :total, :integer, default: 0

  end
end
