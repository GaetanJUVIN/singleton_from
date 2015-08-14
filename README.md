# SingletonFrom

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/singleton_from`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'singleton_from'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singleton_from

## Usage

```ruby
require 'singleton_from'

class A
	singleton_from :start, :stop

	def start(a, b, &block)
		puts "start"
		block.call
	end

	def stop
		puts "stop"
	end

  end

A.start("1", "2") do
	puts "Hi, everyone..."
end

A.stop
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

