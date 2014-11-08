require "coloral/version"

module Coloral

  def self.method_missing(meth, *args, &block)
    if meth.to_s.start_with?("from", "for") && Color.respond_to?(meth)
      Color.public_send(meth, *args)
    else
      super
    end
  end

  def respond_to_missing?(meth, include_private = false)
    meth.to_s.start_with?("from", "for") && Color.respond_to?(meth) || super
  end

  class Color
    def initialize; end

    def self.from_hex(hex_string)
      Color.new
    end

    def self.from_rgb(a_red = nil, a_green = nil, a_blue = nil, r: a_red, g: a_green, b: a_blue, red: r, green: g, blue: b)
      raise ArgumentError if [red, blue, green].any?(&:nil?)
      Color.new
    end

    def self.from_hsl(a_hue = nil, a_saturation = nil, a_lightness = nil, h: a_hue, s: a_saturation, l: a_lightness, hue: h, saturation: s, lightness: l)
      raise ArgumentError if [hue, saturation, lightness].any?(&:nil?)
      Color.new
    end

  end
end
