class Text < ActiveRecord::Base

  belongs_to :user

  def self.default
    new(:text => "The quick brown fox jumps over the lazy dog")
  end

end