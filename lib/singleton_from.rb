require "singleton_from/version"

# class A
# 	singleton_from :start
#
# 	def initialize(arg1, arg2)
# 		p "Initialize"
# 		p arg1
# 		p arg2
# 	end
#
# 	def start
# 		p "start"
# 	end
# end
#
# A.start("1", "2")

class Object
	class << self
		def singleton_from(method_name)
			self.class.send(:define_method, method_name) do |*args|
				instance = self.new(*args)
				instance.send(__method__)
			end
		end
	end
end
