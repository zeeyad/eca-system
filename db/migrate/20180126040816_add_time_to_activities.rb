class AddTimeToActivities < ActiveRecord::Migration[5.1]
  def change
  	remove_column :activities, :time
  	add_column :activities, :time, :time
  end
end
