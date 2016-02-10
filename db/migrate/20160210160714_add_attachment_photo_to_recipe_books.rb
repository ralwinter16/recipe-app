class AddAttachmentPhotoToRecipeBooks < ActiveRecord::Migration
  def self.up
    change_table :recipe_books do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :recipe_books, :photo
  end
end
