class CreateSemesters < ActiveRecord::Migration[5.1]
  def change
    create_table :semesters do |t|
      t.string :session
      t.integer :year
      t.boolean :status, default: false
      t.timestamps
    end
  end
end
