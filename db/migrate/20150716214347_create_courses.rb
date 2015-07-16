class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :category
      t.string :city_name
      t.text :description
      t.references :user

      t.timestamps null: false
    end
  end
end
