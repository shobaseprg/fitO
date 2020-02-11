class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.string :b_or_a
      t.string :lesson_title
      t.integer :lesson_no
    end
  end
end
