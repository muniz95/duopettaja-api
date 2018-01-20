class Question < ApplicationRecord
  belongs_to :lesson
  has_many :question_options
end
