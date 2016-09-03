class DemoController < ApplicationController
  
  layout false
  
  def index
  end
  
  def hello
	# render('index');
	# @ = instance variable, template will have access
	@array = ["Gucci", "Shmurda", "Weezy", "Max B"]
	@id = params['id'].to_i
	@page = params[:page].to_i
  end
  
  def other_hello
  #demo is unecessary here but shows how to define the controller to redirect to
	redirect_to(:controller => 'demo', :action => 'hello')
  end
  
  def reddit_link
	redirect_to("http://reddit.com/r/hiphopheads");
  end
end
