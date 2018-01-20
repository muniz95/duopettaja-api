class User < ApplicationRecord
  has_many :lessons, through: :user_lesson
end
