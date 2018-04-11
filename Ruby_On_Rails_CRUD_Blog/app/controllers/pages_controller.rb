class PagesController < ApplicationController
	def about
		@tittle = 'About Us';
		@content = 'This is the about page';
	end
	def contact
		@tittle = 'Contact Us'
		@content = 'This is the contact page';
	end
end
