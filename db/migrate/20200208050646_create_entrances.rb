class CreateEntrances < ActiveRecord::Migration[5.2]
  def change
    create_table :entrances do |t|

      t.timestamps
    end
  end
end
