class CreateTutoringSessions < ActiveRecord::Migration[5.1]
  def change
    create_table :tutoring_sessions do |t|

      t.string :type
      t.datetime :time

      t.timestamps
    end
  end
end
