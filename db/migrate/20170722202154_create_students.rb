class CreateStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :students do |t|

      t.string :email
      t.integer :struggle_amt

      t.timestamps
    end
  end
end
