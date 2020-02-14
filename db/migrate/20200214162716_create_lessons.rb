class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :k_or_o
      t.integer :lesson_no
      t.string :title
    end
  end
end
