class CreateAllOutputs < ActiveRecord::Migration[5.2]
  def change
    create_table :all_outputs do |t|

      t.timestamps
    end
  end
end
