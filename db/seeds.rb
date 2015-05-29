city_id: NOT NEEDED, ALREADY HAVE
date: fk_res['daily']['data'][0]['time']

summary: fk_res['daily']['data'][0]['summary']
sunrise: fk_res['daily']['data'][0]['sunriseTime']
sunset: fk_res['daily']['data'][0]['sunsetTime']
cloud_cover: fk_res['daily']['data'][0]['cloudCover']

rain: wu_res['history']['dailysummary'][0]['rain']
precipitation: wu_res['history']['dailysummary'][0]['precipi']
snow: wu_res['history']['dailysummary'][0]['snow']
snowfall: wu_res['history']['dailysummary'][0]['snowfalli']

avg_temp: wu_res['history']['dailysummary'][0]['meantempi']
high_temp: wu_res['history']['dailysummary'][0]['maxtempi']
low_temp: wu_res['history']['dailysummary'][0]['mintempi']

avg_dewpt: wu_res['history']['dailysummary'][0]['meandewpti']

avg_wind_spd: wu_res['history']['dailysummary'][0]['meanwindspdi']
avg_wind_dir: wu_res['history']['dailysummary'][0]['meanwdird']

humidity: wu_res['history']['dailysummary'][0]['humidity']

high_apparent_temp: fk_res['daily']['data'][0]['apparentTemperatureMax']
low_apparent_temp: fk_res['daily']['data'][0]['apparentTemperatureMin']

hourly_array = []
hourly_apparent_temp: fk_res['hourly']['data'].each do |datum|
  hourly_array << datum
end

def apparentTemperatureAve(hourly_array) # hourly_array = obj['hourly']['data']
  appTemps = hourly_array.map do |for_hash|
    for_hash['apparentTemperature'].to_i
  end
  appTemps.reduce(:+)/appTemps.length.to_i
end