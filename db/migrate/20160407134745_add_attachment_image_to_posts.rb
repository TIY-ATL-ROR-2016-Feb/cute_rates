class AddAttachmentImageToPosts < ActiveRecord::Migration
  def self.up
    change_table :posts do |t|
      t.attachment :image
    end
    remove_column :posts, :image_url
  end

  def self.down
    remove_attachment :posts, :image
    add_column :posts, :image_url, :string
  end
end
