# SingletonFrom

Welcome to the fantastic new gem! This directory contains all the necessary files to package and distribute your Ruby library as a gem. Your Ruby code should be placed in the file lib/singleton_from, and if you wish to experiment with the code, interactive prompts can be accessed by running bin/console.

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

