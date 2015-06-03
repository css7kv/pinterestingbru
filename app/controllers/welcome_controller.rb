class WelcomeController < ApplicationController
  def index
  	@pins = Pin.all
  	@boards = Board.all
  end
end
