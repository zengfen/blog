class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.string :title
      t.text :description
      t.string :label
      t.string :publisher

      t.timestamps null: false
    end
  end
end
