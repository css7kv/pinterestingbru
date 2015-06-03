class BoardsController < ApplicationController
	def new
		@board = Board.new
	end

	def create
		@board = Board.create(board_params)
		@board.user_id = current_user.id

		if @board.save
			redirect_to @board
		else
			render :new
		end
	end

	def index
		@boards = current_user.boards 
	end

	def show
		@board = Board.find(params[:id])
		
	end

	def edit
		@board = Board.find(params[:id])
	end

	def update
		@board = Board.find(params[:id])

		if @board.save
			redirect_to @board
		else
			render :edit
		end
	end

private

	def board_params
		params.require(:board).permit(:name, :description)
	end

end
