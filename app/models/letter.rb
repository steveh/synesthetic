class Letter < ActiveRecord::Base

  belongs_to :user

  validates_presence_of :user
  validates_presence_of :letter
  validates_presence_of :colour

end