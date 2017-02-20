class AddColmunToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :category, :string
    add_column :courses, :semester, :string
    add_column :courses, :detail, :text
    add_column :courses, :exam, :text
  end
end
