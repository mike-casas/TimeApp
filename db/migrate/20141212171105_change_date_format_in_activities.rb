class ChangeDateFormatInActivities < ActiveRecord::Migration
  def change
     change_column :activities, :started_at, :datetime
     change_column :activities, :ended_at, :datetime
  end
end
