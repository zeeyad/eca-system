class AddDefaultFalseToAttend < ActiveRecord::Migration[5.1]
  def change
    change_column :attendances, :attend, :boolean, :default => false
  end
end
