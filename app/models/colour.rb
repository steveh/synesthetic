class Colour

  def self.random_set
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