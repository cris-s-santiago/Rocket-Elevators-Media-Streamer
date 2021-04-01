require 'open_weather'

module ElevatorMedia
    class Streamer

        def getContent (city)            
            weather =  self.getWeather(city)
            html = "<div class='container'>
                        <div class='widget'>
                            <div class='details'>
                            <div class='temperature'>#{weather["main"]["temp"]} °C</div>
                            <div class='summary'>
                                <p class='summaryText'>#{weather["weather"][0]["description"]}</p>
                            </div>
                            <div class='precipitation'>Humidity: #{weather["main"]["humidity"]}</div>
                            <div class='wind'>Wind: #{weather["wind"]["speed"]}</div> 
                            </div>
                            <div class='pictoBackdrop'></div>
                            <div class='pictoFrame'></div>
                            <div class='pictoCloudBig'></div>
                            <div class='pictoCloudFill'></div>
                            <div class='pictoCloudSmall'></div>
                            <div class='iconCloudBig'></div>
                            <div class='iconCloudFill'></div>
                            <div class='iconCloudSmall'></div>
                        </div>
                    </div>"          
            return html            
        end

        # Get weather by City ID and return json content
        def getWeather(city)
            options = { units: "metric", APPID: ENV["OPEN_WEATHER_KEY"] }
            OpenWeather::Current.city_id(city, options)                
        end
    end
end