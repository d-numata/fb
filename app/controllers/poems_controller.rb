class PoemsController < ApplicationController
  def index
    @poems = Poem.all
  end
  def show
    @poems = Poem.show
  end
end
