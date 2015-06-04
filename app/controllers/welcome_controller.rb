class WelcomeController < ApplicationController
	
  def index
  	@pins = Pin.where(public: true)
  	@boards = Board.all
  end

end
