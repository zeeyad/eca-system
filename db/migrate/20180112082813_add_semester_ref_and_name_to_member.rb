class AddSemesterRefAndNameToMember < ActiveRecord::Migration[5.1]
  def change
    add_reference :members, :semester, foreign_key: true
    add_column :members, :name, :string
  end
end
