class RenamePhotoUrlToPhotoOnUsers < ActiveRecord::Migration
  def change
    rename_column :users, :photo_url, :photo
  end
end
