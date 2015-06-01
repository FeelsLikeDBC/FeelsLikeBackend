class City < ActiveRecord::Base
  has_many :weather_days

  # def text
  #   @new_york_blurb =
  #   "Home to the Empire State Building, Times Square, Statue of Liberty and other iconic sites, New York City is a fast-paced, globally influential center of art, culture, fashion and finance. The city's 5 boroughs sit where the Hudson River meets the Atlantic Ocean, with the island borough of Manhattan at the 'Big Apple's' core."

  #   @new_york_weather =
  #   "Winters are cold and damp. The average temperature in January is almost 33 °F. However, winter temperatures can vary from 10 °F up to 50 °F. Spring and autumn are usually mild with low humidity. Average summer temperature hovers around 76.5 °F in July and humidity is about 72%. Temperatures can exceed 90 °F but rarely top 100 °F. The coldest temperature on record is -15 °F, which occurred on February 9, 1934. The hottest day happened on July 9, 1936, making it all the way up to 106 °F. The city receives about 50 inches of rain annually, and average winter snowfall has been about 26 inches."

  #   @chicago_blurb =
  #   "Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline bristling with skyscrapers such as the iconic John Hancock Center, sleek, 1,451-ft. Willis Tower and neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute and its expansive collections, including noted Impressionist works."

  #   @chicago_weather =
  #   "The city experiences four distinct seasons. Summers are warm and humid, with averages in July hitting 76 °F, while only occasionally exceeding 90 °F. Winters are cold and snowy with few sunny days, and the normal January high is just below freezing. Spring and autumn are mild seasons with low humidity. Chicago's highest official temperature of 105 °F was recorded on July 24, 1934, and the lowest official temperature of −27 °F was recorded on January 20, 1985."

  #   @kansas_city_blurb =
  #   "From world-class racing and grand-scale shopping, to distinctive dining and lodging, Kansas City offers visitors unique experiences packed with hospitality, family fun adventures, and spectacular entertainment. Kansas City is the third-largest city in the state of Kansas, the county seat of Wyandotte County, and the third-largest city of the Kansas City metropolitan area."

  #   @kansas_city_weather =
  #   "The city has four distinct seasons and moderate precipitation, and there is significant potential for extremes of hot and cold swings in temperature throughout the year. The warmest month of the year is July, with an average temperature of 81.0 °F. The summer months are warm, but can get hot and moderately humid, with high temperatures rarely surpassing 100 °F, but commonly rising above 90 °F. The coldest month of the year is January, with an average temperature of 31.0 °F. Winters are cold, but freezing temperatures generally only happen between late October and early April. The official record maximum temperature is 113 °F, set on August 14, 1936, while the record minimum temperature is −23 °F, set on December 22, 1989. Average snowfall is 13 inches. Kansas City is situated on the edge of the 'Tornado Alley', which mean's it's subject to powerful storms, usually occurring during the spring."

  #   @san_francisco_blurb =
  #   "San Francisco, in northern California, is a city on the tip of a peninsula surrounded by the Pacific Ocean and San Francisco Bay. It's known for its hilly landscape, year-round fog, iconic Golden Gate Bridge, cable cars and colorful Victorian houses. The Financial District's Transamerica Pyramid is its most distinctive skyscraper. In the bay sits Alcatraz Island, site of the notorious former prison."

  #   @san_francisco_weather =
  #   "San Francisco's climate is generally characterized by moist mild winters and dry summers. Since it is surrounded on three sides by water, San Francisco experiences remarkably mild year-round climate with little seasonal variation. Among major U.S. cities, San Francisco has the coolest average temperatures for June, July, and August. The late summer and early fall are the warmest times of the year. Temperatures rarely reach or exceed 80 °F.The dry period of May to October is mild to warm, with average temperatures topping out at 63 °F in September. The rainy period of November to April is slightly cooler, with the lowest average temperature hitting in January at 51 °F. It only rains on average about 73 days per year, and annual precipitation is about 24 inches. The highest recorded temperature was 103 °F on June 14, 2000. The lowest recorded temperature was 27 °F on December 11, 1932."

  #   @richmond_blurb =
  #   "Richmond, the capital of Virginia, is among America’s oldest cities. Patrick Henry, a U.S. Founding Father, famously declared “Give me liberty or give me death” at its St. John's Church, leading to the Revolutionary War. The White House of the Confederacy, the Confederate States Army headquarters during the Civil War, is now a museum in Court End, a neighborhood known for Federal-style mansions."

  #   @richmond_weather =
  #   "Richmond has hot and humid summers and generally cool winters. The coldest weather normally occurs from late December to early February, and the average temperature in January is 38 °F. Temperatures tend to drop to freezing levels in early November and usually last until early April. The coldest date on record happened on January 19, 1940, when the temperature got down to −12 °F, but it rarely drop below 0 °F. Snow has been recorded during seven of the twelve months. Falls of 3 inches or more within 24 hours occur an average once per year. Annual snowfall is usually light, averaging 10.5 inches per season. The average in July is about 80 °F. The hottest date on record is 107 °F, which occurred on August 6, 1918. Even at it's hottest, the temperature rarely reach 100 °F."
  # end

end