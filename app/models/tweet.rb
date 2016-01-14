class Tweet < ActiveRecord::Base
  belongs_to :user

  def as_json(opts={})
    super(methods: [:name, :gravatar])
  end

  def name
    "#{user}"
  end

  def gravatar
    hash = Digest::MD5.hexdigest(user.email)
    "http://www.gravatar.com/avatar/#{hash}"
  end
end
