class BoardsController < ApplicationController
  def index
    @boards = Board.all
  end

  def new
    @board = Board.new
  end

  def create
    @board= Board.new(board_params)
    if @board.save
      redirect_to @board
    else
      render :new
    end
  end

  def show
    @board = get_board
  end

  def edit
    @board = get_board
  end

  def update
    @board = get_board
    if @board.update_attributes(board_params)
      redirect_to @board
    else
      render :edit
    end
  end

  private

  def board_params
    params.require(:board).permit(:title)
  end

  def get_board
    Board.find(params[:id])
  end
end