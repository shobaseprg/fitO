class CreateLessons < ActiveRecord::Migration[5.2]
  def change
    create_table :lessons do |t|
      t.integer :bd_les_sub
      t.integer :k_or_o
      t.integer :lesson_no
      t.string :title

    end
  end
end
