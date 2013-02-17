require 'java'
require 'swt.jar'

java_import 'org.eclipse.swt.widgets.Display'
java_import 'org.eclipse.swt.widgets.Shell'

display = Display.new
shell = Shell.new(display)
shell.open

while !shell.disposed? do
  unless display.read_and_dispatch
    display.sleep
  end
end

display.dispose
