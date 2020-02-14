class CreateInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :inputs do |t|
      t.text :title
      t.text :content 
      t.text :image
      t.references :all_input, foregin_key: true



      t.timestamps
    end
  end
end
