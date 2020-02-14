class CreateAllInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :all_inputs do |t|
      t.integer :lesson_no    
      t.integer :kiso_or_oyou         
      t.text :lesson_title          
    end
  end
end
