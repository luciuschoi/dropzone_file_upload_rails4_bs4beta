class DeleteAttachmentFromImages < ActiveRecord::Migration
  def change
    remove_column :images, :avatar_file_name
    remove_column :images, :avatar_content_type
    remove_column :images, :avatar_file_size
    remove_column :images, :avatar_updated_at
  end
end
