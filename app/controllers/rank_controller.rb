class RankController < ApplicationController

  def index
   @rank = Task.all
  end
   
  def new
    @rank = Task.new
  end

  def create
    @rank = Task.new(rank_params)
    if @rank.save
      redirect_to "/rank"
    else
      render :new
    end
  end
  
  private

  def rank_params
    params.permit(:washoku, :youshoku, :italian, :yakiniku, :french, :nabe, :medit, :fast, :sweet)
  end
end