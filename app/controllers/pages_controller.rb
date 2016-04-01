class PagesController < ApplicationController

	def home
		@barries = Barry.all
		@neils = Neil.all
		@ancos = Anco.all
		@justins = Justin.all
	end
	
end
