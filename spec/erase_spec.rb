require "erase"

describe Erase do
  it do
    expect(Erase("hello", /l/)).to eq("heo")
  end

  it do
    expect(Erase("hello", /e/, /o/)).to eq("hll")
  end

  it do
    expect(Erase("hello", /l/, once: true)).to eq("helo")
  end
end
