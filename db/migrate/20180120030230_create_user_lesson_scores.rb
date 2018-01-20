class CreateUserLessonScores < ActiveRecord::Migration[5.1]
  def change
    create_table :user_lesson_scores do |t|
      t.integer :total
      t.datetime :date
      t.references :user_lesson, foreign_key: true

      t.timestamps
    end
  end
end
