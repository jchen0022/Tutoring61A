class TutoringSession < ApplicationRecord
  has_many :tutoring_session_students
  has_many :students, through: :tutoring_session_students

  has_many :tutoring_session_tutors
  has_many :tutors, through: :tutoring_session_tutors
end
