class CreateQuestionOptions < ActiveRecord::Migration[5.1]
  def change
    create_table :question_options do |t|
      t.string :text
      t.boolean :correct
      t.integer :order
      t.references :question, foreign_key: true

      t.timestamps
    end
  end
end
