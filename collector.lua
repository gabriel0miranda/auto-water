collector = {}

function collector.getData(lat,lon,api_key_id,api_url)
    require("socket")
    local https = require("ssl.https")
    local lat = "-16.664626"
    local lon = "-49.291241"
    local api_key_id = "894dcd71b1bfb3940226ead6187d6990"
    local api_url = "https://api.openweathermap.org/data/2.5/weather"
    local request_url = api_url.."?lat="..lat.."&lon="..lon.."&appid="..api_key_id
    local body, code, headers, status = https.request(request_url)
    return body
end

function collector.treatData(body)
    local lunajson = require("lunajson")
    local data = lunajson.decode(body)
    local weather[3]
    -- Insert algorithm to separate the values of rain and humidity and output them
    return data
end

return collector
