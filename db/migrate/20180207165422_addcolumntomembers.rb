class Addcolumntomembers < ActiveRecord::Migration[5.1]
  def change
  	add_column :members, :student_reg, :string
  end
end
