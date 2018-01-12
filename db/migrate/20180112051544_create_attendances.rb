class CreateAttendances < ActiveRecord::Migration[5.1]
  def change
    create_table :attendances do |t|
      t.references :activity, foreign_key: true
      t.references :student, foreign_key: true
      t.boolean :attend

      t.timestamps
    end
  end
end
