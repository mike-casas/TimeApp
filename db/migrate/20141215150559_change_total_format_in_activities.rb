class ChangeTotalFormatInActivities < ActiveRecord::Migration
  def change
    change_column :activities, :total, :integer
  end
end
