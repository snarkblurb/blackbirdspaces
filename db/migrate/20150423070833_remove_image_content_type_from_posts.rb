class RemoveImageContentTypeFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :image_content_type, :string
  end
end
