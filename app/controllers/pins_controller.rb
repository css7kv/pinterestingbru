class PinsController < ApplicationController
	def new
		@pin = Pin.new
	end

	def create
		@pin = Pin.create(pin_params)
		@pin.user_id = current_user.id

		if @pin.save
			redirect_to @pin
		else
			render :new
		end
	end

	def index
		@pins = current_user.pins
	end

	def show
		@pin = Pin.find(params[:id])
	end

	def edit
		@pin = Pin.find(params[:id])
	end

	def addtoboard
		@pin = Pin.find(params[:id])
		@boards = current_user.boards
	end

	def add2
		@pin = Pin.find(params[:pin_id])
		@board = Board.find(params[:id])
		@board.pins << @pin
		@board.save

		redirect_to @board
	end


	def update
		@pin = Pin.find(params[:id])

		if @pin.save
			redirect_to @pin
		else
			render :edit
		end
	end

private

	def pin_params
		params.require(:pin).permit(:title, :caption, :url)
	end

end
