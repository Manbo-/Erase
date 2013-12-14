require "active_support/all"
require "erase/version"

def Erase(strings, *patterns)
  opts = patterns.extract_options!
  if opts[:once]
    patterns.inject(strings) do |s, pattern|
      s.sub(pattern, "")
    end
  else
    patterns.inject(strings) do |s, pattern|
      s.gsub(pattern, "")
    end
  end
end
