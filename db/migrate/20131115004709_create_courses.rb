class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.string :image
      t.integer :prerequisite_course_id
      t.string :system
      t.boolean :enabled

      t.timestamps
    end
  end
end
