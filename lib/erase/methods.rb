def Erase(strings, *patterns)
  opts = patterns.extract_options!
  method = opts[:once] ? :sub : :gsub
  patterns.inject(strings) do |s, pattern|
    s.send(method, pattern, "")
  end
end

def Erase!(strings, *patterns)
  strings.replace(Erase(strings, *patterns))
end

