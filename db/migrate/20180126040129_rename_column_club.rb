class RenameColumnClub < ActiveRecord::Migration[5.1]
  def change
  	remove_column :clubs, :usual_time
  	add_column :clubs, :hours_per_week, :integer
  end
end
