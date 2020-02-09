class CreateOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :outputs do |t|
      t.text :title
      t.text :content 
      t.text :image
      t.references :lesson, foregin_key: true
      t.timestamps
    end
  end
end
