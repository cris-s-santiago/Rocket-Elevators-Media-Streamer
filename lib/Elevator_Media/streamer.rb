require 'open_weather'

module ElevatorMedia
    class Streamer
        def getContent (city)
            
            weather =  self.getWeather(city)
            
            if weather["cod"] == '404'
                html = "ERROR 404 failure to connect to the API"
            else
                html = "
                <html><body>
                    <div class='forecast'>
                    <h3>City:</h3> #{weather["name"]}, #{weather["sys"]["country"]}, 
                    #{weather["weather"][0]["description"]}, 
                    Temp: #{weather["main"]["temp"]} °C,
                    Feels like:  #{weather["main"]["feels_like"]} °C, 
                    Humidity : #{weather["main"]["humidity"]}                        
                    </div>
                </body></html>"
            end
            return html            
        end
        # get weather by City ID and return json content
        def getWeather(city)
            options = { units: "metric", APPID: ENV["OPEN_WEATHER_KEY"] }
            OpenWeather::Current.city_id(city, options)                
        end
    end
end