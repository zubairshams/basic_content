class Web < CommonField
  validates :url, presence: true
  attr_accessible :url

  def to_content_json
    { key: 'text', textcontent: description }
  end
end
