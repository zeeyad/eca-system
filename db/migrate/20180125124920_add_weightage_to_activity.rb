class AddWeightageToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :no_of_hours, :integer
    add_column :activities, :weightage, :integer
    add_column :students, :points, :integer
  end
end
