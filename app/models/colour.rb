class Colour

  def self.random_int
    Random.new.rand(0..255)
  end

  def self.random
    "#%02X%02X%02X" % [random_int, random_int, random_int]
  end

  def self.random_set
    # 26.times.inject([]) { |sum, this| sum << Colour.random }
    options = []

    segments = ["00", "33", "66", "99", "CC", "FF"]

    segments.each do |a|
      segments.each do |b|
        segments.each do |c|
          options << "#%s%s%s" % [a, b, c] unless (a == b && b == c)
        end
      end
    end

    options.sort_by{ rand }[1..26]
  end

end