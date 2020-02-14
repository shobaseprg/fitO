class CreateUserInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_inputs do |t|
      t.references :user, foregin_key: true
      t.references :input, foregin_key: true
      t.timestamps
    end
  end
end
