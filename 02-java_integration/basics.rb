java_import java.util.ArrayList

list = ArrayList.new(20)
list.add "Hello"
list << "world"
puts list.join(', ')
puts list.map {|str| str.upcase}.to_s

__END__
Output:

Hello, world
["HELLO", "WORLD"]
