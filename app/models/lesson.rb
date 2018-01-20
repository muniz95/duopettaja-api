class Lesson < ApplicationRecord
  belongs_to :skill
  has_many :questions
  has_many :users, through: :user_lesson
end
