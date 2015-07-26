require "singleton_from/version"

# class A
# 	singleton_from :start
#
# 	def initialize(arg1, arg2, &block)
# 		p block.call
# 		p "Initialize"
# 		p arg1
# 		p arg2
# 	end
#
# 	def start(&block)
# 		p block.call
# 		p "start"
# 	end
# end
#
# A.start("1", "2") do
# 	puts "Hi, everyone... :-)"
# end

class Object
	class << self
		def singleton_from(method_name)
			self.class.send(:define_method, method_name) do |*args, &block|
				instance = self.new(*args, &block)
				instance.send(__method__, &block)
			end
		end
	end
end
