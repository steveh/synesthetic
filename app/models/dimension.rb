class Dimension < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :user

  DEFAULT_ATTRIBUTES = { :width => 20, :height => 20, :top => 10, :left => 5, :bottom => 10, :right => 5 }

  def self.default(attributes = {})
    new(DEFAULT_ATTRIBUTES.merge(attributes))
  end

end