class Student < ApplicationRecord
  has_many :tutoring_session_students
  has_many :tutoring_sessions, through: :tutoring_session_students

  private

  def verifyEmail
    d
  end
end
