class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :student_reg
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
