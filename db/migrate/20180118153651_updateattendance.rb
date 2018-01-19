class Updateattendance < ActiveRecord::Migration[5.1]
  def change
    remove_column :attendances, :attend
    add_column :attendances, :status, :integer, :default => 0
  end
end
