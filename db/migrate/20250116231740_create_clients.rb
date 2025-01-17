class CreateClients < ActiveRecord::Migration[8.0]
  def change
    create_table :clients do |t|
      t.string :user_name
      t.string :mail

      t.timestamps
    end
  end
end
