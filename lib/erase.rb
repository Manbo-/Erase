require "active_support/all"

require "erase/methods"
require "erase/version"

module Erase
  def erase(*patterns)
    Erase(self, *patterns)
  end

  def erase!(*patterns)
    Erase!(self, *patterns)
  end
end
