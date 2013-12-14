# Erase

## Usage

    require "erase"

    Erase("hello", /e/, /o/) # => "hll"
    Erase("hello", /l/) # => "heo"
    Erase("hello", /l/, once: true) # => "helo"

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
