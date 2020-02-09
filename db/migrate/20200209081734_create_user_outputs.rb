class CreateUserOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :user_outputs do |t|
      t.references :user, foregin_key: true
      t.references :output, foregin_key: true
      t.timestamps
    end
  end
end
