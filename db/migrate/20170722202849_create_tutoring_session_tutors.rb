class CreateTutoringSessionTutors < ActiveRecord::Migration[5.1]
  def change
    create_table :tutoring_session_tutors do |t|

      t.belongs_to :tutoring_session, index: true
      t.belongs_to :tutor, index: true

      t.timestamps
    end
  end
end
