class Tweet < ActiveRecord::Base
  belongs_to :user

  def as_json(opts={})
    super(methods: [:name])
  end

  def name
    "#{user}"
  end
end
