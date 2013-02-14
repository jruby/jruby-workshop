require 'java'

java_import javax.swing.JFrame
java_import javax.swing.JButton
java_import javax.swing.JOptionPane

frame  = JFrame.new("Hello Swing")
button = JButton.new("Klick Me!")

button.add_action_listener do |event|
  JOptionPane.showMessageDialog(nil, <<EOS)
<html>Hello from <b><u>JRuby</u></b>.<br>
Button '#{event.getActionCommand()}' clicked.
EOS
end

# Add the button to the frame
frame.get_content_pane.add(button)

# Show frame
frame.set_default_close_operation(JFrame::EXIT_ON_CLOSE)
frame.pack
frame.visible = true
