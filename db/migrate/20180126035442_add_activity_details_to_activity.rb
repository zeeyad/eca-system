class AddActivityDetailsToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :week_no, :integer
    add_column :activities, :activity_name, :string
    add_column :activities, :date, :date
    add_column :activities, :time, :string
    add_column :activities, :venue, :string
    add_column :activities, :description, :text
  end
end
