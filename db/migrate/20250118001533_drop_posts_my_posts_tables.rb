class DropPostsMyPostsTables < ActiveRecord::Migration[8.0]
  def change
    drop_table :posts
    drop_table :my_posts
  end
end
