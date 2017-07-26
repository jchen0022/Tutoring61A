class ChangeTutoringSessionColName < ActiveRecord::Migration[5.1]
  def change
    rename_column :tutoring_sessions, :type, :tutoring_type
  end
end
