class CreateTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutors do |t|

      t.string :email

      t.timestamps
    end
  end
end
