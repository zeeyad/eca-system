class Addclubidtoattendance < ActiveRecord::Migration[5.1]
  def change
    add_reference :attendances, :club, foreign_key: true
  end
end
