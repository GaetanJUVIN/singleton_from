require "singleton_from/version"

# class A
# 	singleton_from :start, :stop
#
# 	def start(a, b, &block)
# 		puts "start"
# 		block.call
# 	end
#
# 	def stop
# 		puts "stop"
# 	end
#
# 	def self.instance
#     	@__instance__ ||= new
# 	end
#   end
#
# A.start("1", "2") do
# 	puts "Hi, everyone..."
# end
#
# A.stop

class Object
	class << self
		def singleton_from(*method_names)
			self.class.send(:define_method, :instance) do
		    	@__instance__ ||= new
			end

			method_names.each do |method_name|
				self.class.send(:define_method, method_name) do |*args, &block|
					self.instance.send(__method__, *args, &block)
				end
			end
		end
	end
end
