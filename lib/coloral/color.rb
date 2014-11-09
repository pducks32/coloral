class Color

  attr_reader :hue, :saturation, :lightness

  def initialize(hue, saturation, lightness)
    @hue, @saturation, @lightness = hue, saturation, lightness
  end

  def self.from_hex(hex_string)
    new *hex_string.scan(/([0-9a-fA-F]{2})/).flatten
  end


  def self.from_hsl(a_hue = nil, a_saturation = nil, a_lightness = nil, h: a_hue, s: a_saturation, l: a_lightness, hue: h, saturation: s, lightness: l)
    raise ArgumentError if [hue, saturation, lightness].any?(&:nil?)
    new hue, saturation, lightness
  end

end
