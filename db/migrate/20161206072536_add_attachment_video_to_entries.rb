class AddAttachmentVideoToEntries < ActiveRecord::Migration
  def self.up
    change_table :entries do |t|
      t.attachment :video
    end
  end

  def self.down
    remove_attachment :entries, :video
  end
end
