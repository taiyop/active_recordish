# ActiveRecordish

## Installation

Add this line to your application's Gemfile:

    gem 'active_recordish'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install active_recordish

## Usage
```ruby
require 'active_recordish'
class Tmp < ActiveRecordish::Base
  def initialize
    @name = "me"
  end

  def name= _name
    @name = _name
  end
end

tmp = Tmp.new
tmp.save
Tmp.all #=> [tmp]

tmp2 = Tmp.new
tmp2.name= "you"
tmp2.save #=> name is "you"
Tmp.all #=> [tmp, tmp2]
Tmp.all.count #=> 2
```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/active_recordish/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
