


class TestController < ApplicationController

skip_before_action :verify_authenticity_token

def index


	t = Tropo::Generator.new
	t.say(:value => "Thanks for calling the Charlotte-Mecklenburg Parks Department Weather Hotline!")
	render :json => t.response

end

end
