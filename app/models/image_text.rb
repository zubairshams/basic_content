class ImageText < CommonField
  attr_accessible :description, :image

  has_attached_file :image, :styles => { :medium => "300x300>", :thumb => "100x100>" },
    :path => ":rails_root/public/content/common/:attachment/:id/:style/:filename",
    :url  => "/content/common/:attachment/:id/:style/:filename",
    :default_url => "/assets/missing.png"

  validates :description, presence: true
  validates_attachment :image, :content_type => { :content_type => ['image/jpg', 'image/png', 'image/jpeg', 'image/gif', 'image/x-png', 'image/pjpeg'],
                                                  :message => "does not support %{value}, Only JPG, PNG and GIF formats are allowed", :allow_blank => true }
end
