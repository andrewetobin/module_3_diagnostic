require './app/models/services/station_service'
class StationsFacade

  def initialize(zip)
    @zip = zip
  end

  def stations
    @stations ||= service.stations_search[:fuel_stations].map do |data|
      Station.new(data)
    end
    require "pry"; binding.pry
  end

  private

    def service
      StationService.new(@zip)
    end



end
