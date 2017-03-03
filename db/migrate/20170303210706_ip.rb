class Ip < ActiveRecord::Migration
  def change
    add_column :courses, :ip_create, :string
    add_column :courses, :ip_update, :string
  end
end
