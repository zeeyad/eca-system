class Changestatusattribute < ActiveRecord::Migration[5.1]
  def change
    remove_column :attendances, :status
    add_column :attendances, :status, :boolean
  end
end
