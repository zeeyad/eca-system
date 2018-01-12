class Removesemester < ActiveRecord::Migration[5.1]
  def change
    remove_column :activities, :semester_id
  end
end
