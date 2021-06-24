require_relative "Cream.rb"

class Cookie
    include Cream
    extend Cream::ClassMethods
end

cookiesh = Cookie.new
puts cookiesh.cream 
puts Cookie.CM