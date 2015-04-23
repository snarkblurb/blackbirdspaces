class RemoveImageFileSizeFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :image_file_size, :integer
  end
end
