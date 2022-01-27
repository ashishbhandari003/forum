class WelcomeController < ApplicationController

	def index
		@type = 'question'
	end

	def redirect_back
		@type = 'question'
	end
	
end
