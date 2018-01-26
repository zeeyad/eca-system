class AddStudentDetailsToStudent < ActiveRecord::Migration[5.1]
  def change
    add_column :students, :degree, :string
    add_column :students, :faculty, :string
  end
end
