class AddDevAspectToClub < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :phs_activity, :string
    add_column :clubs, :phs_hours, :integer
    add_column :clubs, :phs_weightage, :integer
    add_column :clubs, :culture_activity, :string
    add_column :clubs, :culture_hours, :integer
    add_column :clubs, :culture_weightage, :integer
    add_column :clubs, :spiritual_activity, :string
    add_column :clubs, :spiritual_hours, :integer
    add_column :clubs, :spiritual_weightage, :integer
    add_column :clubs, :social_activity, :string
    add_column :clubs, :social_hours, :integer
    add_column :clubs, :social_weightage, :integer
    add_column :clubs, :mental_activity, :string
    add_column :clubs, :mental_hours, :integer
    add_column :clubs, :mental_weightage, :integer
  end
end
