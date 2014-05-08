class AnimeController < ApplicationController
  def index
    @title = params[:title]
    @asd = "asdasdasd"
    @episodes = params[:episodes]
  end
end
