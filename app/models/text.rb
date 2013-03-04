class Text < CommonField
  attr_accessible :description

  validates :description, presence: true 
end
