class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  #追加
  def show
    @poem = Poem.find(params[:id])
  end
end
