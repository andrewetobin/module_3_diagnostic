class SearchController < ApplicationController

  def index
    @stations_facade = StationsFacade.new(params[:q])
  end

end
