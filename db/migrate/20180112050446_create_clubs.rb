class CreateClubs < ActiveRecord::Migration[5.1]
  def change
    create_table :clubs do |t|
      t.string :name
      t.references :semester, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
