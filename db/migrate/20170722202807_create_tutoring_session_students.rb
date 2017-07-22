class CreateTutoringSessionStudents < ActiveRecord::Migration[5.1]
  def change
    create_table :tutoring_session_students do |t|

      t.belongs_to :tutoring_session, index: true
      t.belongs_to :student, index: true

      t.timestamps
    end
  end
end
