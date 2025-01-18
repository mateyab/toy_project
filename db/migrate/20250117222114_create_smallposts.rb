class CreateSmallposts < ActiveRecord::Migration[8.0]
  def change
    create_table :smallposts do |t|
      t.text :content
      t.integer :client_id

      t.timestamps
    end
  end
end
