class CreateMembers < ActiveRecord::Migration[5.1]
  def change
    create_table :members do |t|
      t.references :student, foreign_key: true
      t.references :club, foreign_key: true

      t.timestamps
    end
  end
end
