class StationService

  def initialize(zip)
   @zip = zip
  end

  def stations_search
    get_json("/api/alt-fuel-stations/v1.json?limit=10&fuel_type=ELEC,LPG&api_key=#{key}&format=JSON&zip=80126&radius=6")
  end


 private

    def conn
      Faraday.new(url: https://developer.nrel.gov) do |faraday|
        faraday.adapter Faraday.default_adapter
      end
    end

    def get_json(url)
      JSON.parse(conn.get(url).body, symbolize_names: true)
    end


end
