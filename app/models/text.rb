class Text < ActiveRecord::Base

  belongs_to :user

  DEFAULT_ATTRIBUTES = { :text => "The quick brown fox jumps over the lazy dog" }

  def self.default(attributes = {})
    new(DEFAULT_ATTRIBUTES.merge(attributes))
  end

end