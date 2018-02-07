class ChangecolumninClub < ActiveRecord::Migration[5.1]
  def change
  	change_column :clubs, :hours_per_week, :string
  end
end
