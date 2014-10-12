require "coloral/version"

module Coloral
  def self.from_hex(hex_string)
    Color.from_hex(hex_string)
  end

  class Color
    def initialize; end

    def self.from_hex(hex_string)
      Color.new
    end
  end
end
