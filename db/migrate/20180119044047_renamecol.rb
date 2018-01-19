class Renamecol < ActiveRecord::Migration[5.1]
  def change
    remove_reference :attendances, :student
    add_reference :attendances, :member, foreign_key: true
  end
end
