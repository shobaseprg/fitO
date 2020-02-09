class CreateUserInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_inputs do |t|
      t.integer :user_id
      t.integer :input_id
      t.timestamps
    end
  end
end
