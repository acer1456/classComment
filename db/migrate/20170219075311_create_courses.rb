class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :teacher
      t.text :comment
      t.integer :vote

      t.timestamps null: false
    end
  end
end
