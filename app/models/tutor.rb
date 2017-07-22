class Tutor < ApplicationRecord
  has_many :tutoring_session_tutors
  has_many :tutoring_sessions, through: :tutoring_session_tutors
end
