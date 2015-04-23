class RemoveImageUploadedAtFromPosts < ActiveRecord::Migration
  def change
    remove_column :posts, :image_uploaded_at, :datetime
  end
end
