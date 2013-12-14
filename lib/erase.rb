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

  module_function

  def enable                    # extend / active
    String.module_eval do
      include Erase
    end
  end
end
