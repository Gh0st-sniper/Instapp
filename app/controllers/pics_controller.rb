class PicsController < ApplicationController
  before_action :find_pic, only: [:show,:edit,:update,:destroy]
  def index
    @pics = Pic.all
  end

  def new
    @pic = Pic.new
  end

  def create
    @pic = Pic.new(pic_params)
    if @pic.save then
      redirect_to @pic,notice: "Pic was successfully posted"
    else
      render 'new'

    end
  end

  def show
    
   
  end

  def edit
  end

  private
    def pic_params
      params.require(:pic).permit(:title,:description)  
    end

  private
    def find_pic
      @pic = Pic.find(params[:id])
    end


end
