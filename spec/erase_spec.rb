require "erase"

describe Erase do
  describe "Erase" do
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

  describe "Erase!" do
    it do
      strings = "hello"
      expect{ Erase!(strings, /l/) }.to change{ strings }.to("heo")
    end
  end

  context "included" do
    class String; include Erase end
    
    it do
      expect("hello".erase(/h/, /o/)).to eq("ell")
    end
      
    it do
      expect("hello".erase(/l/, once: true)).to eq("helo")
    end

    it do
      strings = "hello"
      expect{ strings.erase!(/h/, /e/) }.to change{ strings }.to("llo")
    end
  end
end
