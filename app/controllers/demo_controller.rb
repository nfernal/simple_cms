class DemoController < ApplicationController

  layout false

  def index
    render(:template => 'demo/index')
  end

  def hello
    @array = [1,2,3,4,5]
    @id = params['id']
    @page = params[:page]
    render(:template => 'demo/hello')
  end

  def other_hello
    redirect_to(:controller => 'demo', :action => 'hello')
  end

  def nike
    redirect_to('http://www.nike.com/us/en_us/')
  end
end
