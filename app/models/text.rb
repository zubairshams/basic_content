class Text < CommonField
  attr_accessible :description

  validates :description, presence: true

  def is_custome_content?
    false
  end

  def to_content_json
    content = { type: 'content', title: '', values: [{ key: 'text', textcontent: description }]}
    content.merge!(yield) if block_given?
  end
end
