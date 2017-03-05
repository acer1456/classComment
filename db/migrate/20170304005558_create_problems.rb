class CreateProblems < ActiveRecord::Migration
  def change
    create_table :problems do |t|
      t.string :title
      t.text :detail
      t.integer :user_id, index: true, unique: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
