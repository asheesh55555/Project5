class CreateSites < ActiveRecord::Migration[5.1]
  def change
    create_table :sites do |t|
      t.string :site
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
