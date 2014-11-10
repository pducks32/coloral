require "coloral/version"

module Coloral
  autoload :Model, "coloral/model"
  autoload :RGBModel, "coloral/models/rgb_model"
  autoload :Color, "coloral/color"

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

end
