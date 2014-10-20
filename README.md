# Storage

This is a library provides storage for words. It's implemented with prefix tree.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'storage'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install storage

## Usage

```ruby
require 'storage'

# Create storage
s = Storage.new
# Add string with words separated by comma
s.add('abc,abcd,abcde,abcdf')
s.add('xyz,xyzt')

# Load from file
s.load_from_file('words')
# Load from zip file
s.load_from_zip('words.zip')
# Save to file
s.save_to_file('words')
# Save to zip file
s.save_to_zip('words.zip')

# Does storage contain word?
s.contains?('abc') #=> true
s.contains?('alpha') #=> false

# Find all words started with prefix
s.find('abc') #=> ['abc','abcd','abcde','abcdf']
s.find('abcd') #=> ['abcd','abcde','abcdf']
s.find('ab') #=> ArgumentError: Prefix should be 3 letter at least
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/storage/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
