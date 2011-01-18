class User < ActiveRecord::Base

  has_many :letters
  has_many :texts
  has_one :dimension

  def dimensions
    dimension || Dimension.default(:user => self)
  end

  validates_presence_of :username

  LETTERS = "a".."z"

  def random_set
    Hash[*LETTERS.zip(Colour.random_set).flatten]
  end

  def letter_map
    map = random_set
    letters.each do |letter|
      map[letter.letter] = letter.colour if map.has_key?(letter.letter) && letter.colour.present?
    end
    map
  end

end