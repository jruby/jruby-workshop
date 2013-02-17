require 'jrubyfx'

class HelloWorldController < JRubyFX::Controller
  fx_id :helloLabel
  
  fx_handler :sayClicked do
    @helloLabel.text = "You clicked me!"
  end
end

class HelloWorldApp < JRubyFX::Application
  
  def start(stage)
      with(stage, title: "Hello World!")
      HelloWorldController.load_fxml("hello.fxml", stage)
      stage.show()
  end
end

HelloWorldApp.launch
