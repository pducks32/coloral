
module Coloral::Model

  def included(base)
    base.extend self::ConstructorMethod
  end

end
