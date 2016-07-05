class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :title
      t.string :url
      t.string :checker
      t.text :description

      t.timestamps null: false
    end
  end
end
