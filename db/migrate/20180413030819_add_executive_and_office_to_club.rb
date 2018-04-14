class AddExecutiveAndOfficeToClub < ActiveRecord::Migration[5.1]
  def change
   add_column :clubs, :office, :integer, default: 0
   add_column :clubs, :executive, :integer, default: 0
  end
end
