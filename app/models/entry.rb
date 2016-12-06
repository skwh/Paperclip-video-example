class Entry < ActiveRecord::Base
  has_attached_file :video, :styles => {
    :medium => { :format => 'mp4' },
    :thumb => { :geometry => "500x500#", :format => 'jpg', :time => 2 }
  }, :processors => [:transcoder]
  validates_attachment_presence :video
  validates_attachment :video, content_type: { content_type: ["video/mp4", "video/mov", "video/wav", "video/wmv"] }
end
