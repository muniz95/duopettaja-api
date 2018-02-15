class Question < ApplicationRecord
  belongs_to :lesson
  has_many :options, foreign_key: "question_id", class_name: "QuestionOption"
end
