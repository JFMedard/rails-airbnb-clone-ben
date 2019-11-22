class DeletePhotoFromLama < ActiveRecord::Migration[5.2]
  def change
     remove_column :lamas, :photo
  end
end
