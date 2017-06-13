class FixColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :nodes, :place, :place_id
  end
end
