class AddDevelopmentAspectToActivity < ActiveRecord::Migration[5.1]
  def change
    add_column :activities, :dev_aspect, :integer
  end
end
