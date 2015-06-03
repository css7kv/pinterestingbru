class BoardsController < ApplicationController
	def new
		@board = Board.new
	end

	def create
		@board = Board.create(board_params)
		@board.user_id = current_user.user_id

		if @board.save
			redirect_to @board
		else
			render :new
		end
	end

	def index
		@board = current_user.boards 
	end

	def show
		@board = Board.find(params[:id])
	end

private

	def board_params
		params.require(:board).permit(:name, :description)
	end

end
