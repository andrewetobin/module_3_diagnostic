class StationsFacade

  def stations
    @stations ||= service.stations_search.map do |data|
      Station.new(data)
    end
  end

  private

    def service
      StationService.new(params[:q])
    end



end
