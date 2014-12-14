class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.text :descripcion
      t.date :started_at
      t.date :ended_at
      t.references :project, index: true

      t.timestamps
    end
  end
end
