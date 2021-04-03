require 'open_weather'

module ElevatorMedia
    class Streamer

        def getContent (city, type)
            
            if (type == "Weather")

                weather =  self.getWeather(city)
                html = "<div class='container'>
                            <div class='widget'>
                                <div class='details'>
                                    <div class='temperature'>City: #{weather["name"]}, #{weather["sys"]["country"]}</div>
                                    <div class='temperature'>#{weather["main"]["temp"]} °C</div>
                                    <div class='summary'>
                                        <p class='summaryText'>#{weather["weather"][0]["description"]}</p>
                                    </div>
                                    <div class='precipitation'>Humidity: #{weather["main"]["humidity"]}</div>
                                        <div class='wind'>Wind: #{weather["wind"]["speed"]}</div> 
                                    </div>
                                </div>
                            </div>
                        </div>"
                        
            elsif (type == "Joke")

                html = self.getJoke()

            end          
            return html            
        end

        # Get weather by City ID and return json content
        def getWeather(city)
            options = { units: "metric", APPID: ENV["OPEN_WEATHER_KEY"] }
            OpenWeather::Current.city_id(city, options)                
        end
        def getJoke()
            chuckNorrisJSON = HTTP.get('http://api.icndb.com/jokes/random')
            obj = JSON.parse(chuckNorrisJSON)['value']['joke']
            html="<div>#{obj}</div>"  
        return html
        end
    end
end