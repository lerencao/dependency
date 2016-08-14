# Dependency

A simple module to declare dependencies in your modules.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'dependency'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install dependency

## Usage

``` ruby
require 'dependency'
module A
  extend Dependency
  dependent :user, class: User
end

p A.denepdencies => [[:user, {class: User}]]

class B
  include A
end

p B.dependencies => [[:user, {class: User}]]
```


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/lerencao/dependency.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

