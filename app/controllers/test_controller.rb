


class TestController < ApplicationController

skip_before_action :verify_authenticity_token

def index


	#t = Tropo::Generator.new
	#t.say(:value => "Thanks for calling the Charlotte-Mecklenburg Parks Department Weather Hotline!")
	#render :json => t.response

	t = Tropo::Generator.new
	t.ask :name => 'color',

				 :timeout => 60,

				 :say => {:value => "What's your favorite color?  Choose from red, blue or green."},

				 :choices => {:value => "red, blue, green"}
	t.on :event => 'continue', :next => '/continue.json'
	t.response
end

end
