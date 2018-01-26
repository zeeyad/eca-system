class RemoveNameFromActivity < ActiveRecord::Migration[5.1]
  def change
  	remove_column :activities, :activity_name
  end
end
