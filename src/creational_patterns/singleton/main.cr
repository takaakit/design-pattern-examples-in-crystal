require "./singleton"

# Check whether the same instance is obtained.

obj_1 = Singleton::INSTANCE
obj_2 = Singleton::INSTANCE
if obj_1 === obj_2
  puts "obj1 and obj2 are the same instance."
else
  puts "obj1 and obj2 are different instances."
end
