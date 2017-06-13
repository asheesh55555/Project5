class CreateNodes < ActiveRecord::Migration[5.1]
  def change
    create_table :nodes do |t|
      t.string :node_name
      t.string :place
      t.integer :_id

      t.timestamps
    end
  end
end
