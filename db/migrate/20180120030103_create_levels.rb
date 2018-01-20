class CreateLevels < ActiveRecord::Migration[5.1]
  def change
    create_table :levels do |t|
      t.string :alias
      t.integer :score
      t.integer :number

      t.timestamps
    end
  end
end
