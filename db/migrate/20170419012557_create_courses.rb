class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.float :price
      t.string :info

      t.timestamps
    end
  end
end
