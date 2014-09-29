class AddAttachmentPhotoToWelcomes < ActiveRecord::Migration
  def self.up
    change_table :welcomes do |t|
      t.attachment :photo
    end
  end

  def self.down
    drop_attached_file :welcomes, :photo
  end
end
