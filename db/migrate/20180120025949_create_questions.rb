class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string :category
      t.string :expression
      t.string :audio
      t.integer :weight
      t.references :lesson, foreign_key: true

      t.timestamps
    end
  end
end
