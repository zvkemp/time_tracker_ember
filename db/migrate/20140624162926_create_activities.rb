class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.integer :project_id, index: true
      t.integer :minutes
      t.text :description

      t.timestamps
    end
  end
end
