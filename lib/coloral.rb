require "coloral/version"

module Coloral

  def self.from_hex(hex_string)
    Color.from_hex(hex_string)
  end

  def self.from_rgb(a_red=nil, a_green=nil, a_blue=nil, r: a_red, g: a_green, b: a_blue, red: r, green: g, blue: b)
    raise ArgumentError if [red, blue, green].any?(&:nil?)
    Color.from_rgb(red, blue, green)
  end

  def self.from_hsl(a_hue=nil, a_saturation=nil, a_lightness=nil, h: a_hue, s: a_saturation, l: a_lightness, hue: h, saturation: s, lightness: l)
    raise ArgumentError if [hue, saturation, lightness].any?(&:nil?)
    Color.from_hsl(hue, saturation, lightness)
  end

  class Color
    def initialize; end

    def self.from_hex(hex_string)
      Color.new
    end

    def self.from_rgb(a_red, a_green, a_blue, r: a_red, g: a_green, b: a_blue, red: r, green: g, blue: b)
      Color.new
    end

    def self.from_hsl(a_hue, a_saturation, a_lightness, h: a_hue, s: a_saturation, l: a_lightness, hue: h, saturation: s, lightness: l)
      Color.new
    end

  end
end
