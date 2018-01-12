class Removeref < ActiveRecord::Migration[5.1]
  def change
    remove_column :members, :semester_id
  end
end
