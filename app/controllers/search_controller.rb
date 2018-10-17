class SearchController < ApplicationController

  def index
    @stations_facade = StationsFacade.new
  end

end
