class Web < CommonField
  validates :url, presence: true
  attr_accessible :url
end
