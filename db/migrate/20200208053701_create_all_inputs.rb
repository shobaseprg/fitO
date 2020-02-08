class CreateAllInputs < ActiveRecord::Migration[5.2]
  def change
    create_table :all_inputs do |t|

      t.timestamps
    end
  end
end
