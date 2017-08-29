class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  #追加
  def show
    @poems = Poem.find(params[:id])
    render json: @poems
  end
end
