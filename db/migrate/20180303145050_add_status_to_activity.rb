class AddStatusToActivity < ActiveRecord::Migration[5.1]
  def change
  	add_column :activities, :status, :integer, default: 0
  end
end
