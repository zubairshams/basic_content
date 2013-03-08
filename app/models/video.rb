class Video < CommonField
  attr_accessible :url, :video_username

  before_save :check_params

  def check_params
    if url.present?
      self.video_username = nil
    end
  end
end
