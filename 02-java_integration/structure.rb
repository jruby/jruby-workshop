java_import java.lang.Runtime

puts "Runtime class methods:"
puts Runtime.public_methods.sort.join ", "

puts "Runtime instance methods:"
puts Runtime.public_instance_methods.sort.join ", "

runtime = Runtime.runtime # Rubified version of getRuntime
puts "Max memory: #{runtime.maxMemory}" # Normal Java name
puts "Free memory: #{runtime.free_memory}" # Rubified name
