class City < ActiveRecord::Base
  has_many :weather_days

  def text
    @new_york_blurb =
    "Home to the Empire State Building, Times Square, Statue of Liberty and other iconic sites, New York City is a fast-paced, globally influential center of art, culture, fashion and finance. The city’s 5 boroughs sit where the Hudson River meets the Atlantic Ocean, with the island borough of Manhattan at the 'Big Apple's' core."

    @new_york_weather =
      "Winters are cold and damp. The average temperature in January is almost 33 °F. However, winter temperatures can vary from 10 °F up to 50 °F. Spring and autumn are usually mild with low humidity. Average summer temperature hovers around 76.5 °F in July and humidity is about 72%. Temperatures can exceed 90 °F but rarely top 100 °F. The coldest temperature on record is  −15 °F, which occurred on February 9, 1934. The hottest day happened on July 9, 1936, making it all the way up to 106 °F. The city receives about 50 inches of rain annually, and average winter snowfall has been about 26 inches."

    @chicago_blurb =
      "Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline bristling with skyscrapers such as the iconic John Hancock Center, sleek, 1,451-ft. Willis Tower and neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute and its expansive collections, including noted Impressionist works."

    @chicago_weather =
    "The city experiences four distinct seasons. Summers are warm and humid, with averages in July hitting 76 °F, while only occasionally exceeding 90 °F. Winters are cold and snowy with few sunny days, and the normal January high is just below freezing. Spring and autumn are mild seasons with low humidity. Chicago's highest official temperature of 105 °F was recorded on July 24, 1934, and the lowest official temperature of −27 °F was recorded on January 20, 1985."

    @kansas_city_blurb =
    "From world-class racing and grand-scale shopping, to distinctive dining and lodging, Kansas City offers visitors unique experiences packed with hospitality, family fun adventures, and spectacular entertainment. Kansas City is the third-largest city in the state of Kansas, the county seat of Wyandotte County, and the third-largest city of the Kansas City metropolitan area."

    @kansas_city_weather =
    "Kansas City lies in the Midwestern United States, as well as near the geographic center of the country, at the confluence of the largest river in the country, the Missouri River, and the Kansas River (also known as the Kaw River). The city lies in the Humid continental climate (Köppen Dfa) zone, with four distinct seasons, and moderate precipitation, and is part of USDA plant hardiness zones 5b and 6a[11] Being located in the center of North America, far removed from a significant body of water, there is significant potential for extremes of hot and cold swings in temperature throughout the year. Unless otherwise stated, normal figures below are based on data from 1981 to 2010 at Downtown Airport. The warmest month of the year is July, with a 24-hour average temperature of 81.0 °F (27.2 °C). The summer months are warm, but can get hot and moderately humid, with moist air riding up from the Gulf of Mexico. High temperatures surpass 100 °F (38 °C) on 5.6 days of the year, and 90 °F (32 °C) on 47 days.[12][13] The coldest month of the year is January, with an average temperature of 31.0 °F (−0.6 °C). Winters are cold, with 22 days where the high is at or below the freezing mark and 2.5 nights with a low at or below 0 °F (−18 °C).[12] The official record maximum temperature is 113 °F (45 °C), set on August 14, 1936 at Downtown Airport, while the official record minimum temperature is −23 °F (−31 °C), set on December 22 and 23, 1989.[12] Normal seasonal snowfall is 13.4 inches (34 cm) at Downtown Airport and 18.8 in (48 cm) at Kansas City International Airport. The average window for freezing temperatures is October 31 to April 4, while for measurable (0.1 in or 0.25 cm) snowfall, it is November 27 to March 16 as measured at Kansas City International Airport. Precipitation, both in frequency and total accumulation, shows a marked uptick in late spring and summer."

      "Kansas City is situated on the edge of the 'Tornado Alley', a broad region where cold air from the Rocky Mountains in Canada collides with warm air from the Gulf of Mexico, leading to the formation of powerful storms especially during the spring. A few areas of the Kansas City Metropolitan Area have had some severe outbreaks of tornadoes at different points in the past, including the Ruskin Heights tornado in 1957,[14] and the May 2003 tornado outbreak sequence. The region can also fall victim to the sporadic ice storm during the winter months, such as the 2002 ice storm during which hundreds of thousands lost power for days and (in some cases) weeks.[15] Kansas City and its outlying areas are also subject to flooding, including the Great Flood of 1993 and the Great Flood of 1951."




SAN FRANCISCO:
San Francisco, in northern California, is a city on the tip of a peninsula surrounded by the Pacific Ocean and San Francisco Bay. It's known for its hilly landscape, year-round fog, iconic Golden Gate Bridge, cable cars and colorful Victorian houses. The Financial District's Transamerica Pyramid is its most distinctive skyscraper. In the bay sits Alcatraz Island, site of the notorious former prison.

A popular quote incorrectly attributed to Mark Twain is "The coldest winter I ever spent was a summer in San Francisco."[90][91] San Francisco's climate is characteristic of the cool-summer Mediterranean climate (Csb)[92] of California’s coast, "generally characterized by moist mild winters and dry summers".[93] Since it is surrounded on three sides by water, San Francisco's weather is strongly influenced by the cool currents of the Pacific Ocean, which moderate temperature swings and produce a remarkably mild year-round climate with little seasonal temperature variation.

Among major U.S. cities, San Francisco has the coolest daily mean, maximum, and minimum temperatures for June, July, and August.[94] During the summer, rising hot air in California's interior valleys creates a low pressure area that draws winds from the North Pacific High through the Golden Gate, which creates the city's characteristic cool winds and fog.[95] The fog has an active Twitter following at @KarlTheFog.[96] The fog is less pronounced in eastern neighborhoods and during the late summer and early fall, which is the warmest time of the year.

Because of its sharp topography and maritime influences, San Francisco exhibits a multitude of distinct microclimates. The high hills in the geographic center of the city are responsible for a 20% variance in annual rainfall between different parts of the city. They also protect neighborhoods directly to their east ("banana belts" such as Noe Valley) from the foggy and sometimes very cold and windy conditions experienced in the Sunset District; for those who live on the eastern side of the city, San Francisco is sunnier, with an average of 260 clear days, and only 105 cloudy days per year.

Temperatures reach or exceed 80 °F (27 °C) on an average of only 21 and 23 days a year at downtown and San Francisco International Airport (SFO), respectively.[89] The dry period of May to October is mild to warm, with the normal monthly mean temperature peaking in September at 62.7 °F (17.1 °C).[89] The rainy period of November to April is slightly cooler, with the normal monthly mean temperature reaching its lowest in January at 51.3 °F (10.7 °C).[89] On average, there are 73 rainy days a year, and annual precipitation averages 23.65 inches (601 mm).[89] Variation in precipitation from year to year is high. In 2013, a year of extreme drought in California, a record low 5.59 in (142 mm) of rainfall was recorded at downtown San Francisco, where records have been kept since 1849. [89] Snowfall in the city is very rare, with only 10 measurable accumulations recorded since 1852, most recently in 1976 when up to 5 inches (130 mm) fell on Twin Peaks.[97][98]

The highest recorded temperature at the official National Weather Service office was 103 °F (39 °C) on July 17, 1988, and June 14, 2000. The lowest recorded temperature was 27 °F (−3 °C) on December 11, 1932.[99] The National Weather Service provides a helpful visual aid[100] graphing the information in the table below to display visually by month the annual typical temperatures, the past year's temperatures, and record temperatures.



RICHMOND:
Richmond, the capital of Virginia, is among America’s oldest cities. Patrick Henry, a U.S. Founding Father, famously declared “Give me liberty or give me death” at its St. John's Church, leading to the Revolutionary War. The White House of the Confederacy, the Confederate States Army headquarters during the Civil War, is now a museum in Court End, a neighborhood known for Federal-style mansions.

Richmond has hot and humid summers and generally cool winters. The coldest weather normally occurs from late December to early February, and the average temperature in January is 37.9 °F. The coldest date on record happened on January 19, 1940, when the temperature got down to −12 °F, but temperatures rarely drop below 0 °F. The average temperature in July is 79.3 °F. The hottest date on record is 107 °F, which occurred on August 6, 1918. Temperature rarely go reach 100 °F, though. Temperatures tend to drop to freezing levels in early November and usually last until early April.

Precipitation is rather uniformly distributed throughout the year. However, dry periods lasting several weeks do occur, especially in autumn when long periods of pleasant, mild weather are most common. There is considerable variability in total monthly amounts from year to year so that no one month can be depended upon to be normal. Snow has been recorded during seven of the twelve months. Falls of 3 inches (7.6 cm) or more within 24 hours occur an average once per year.[38] Annual snowfall, however, is usually light, averaging 10.5 inches (27 cm) per season.[38] Snow typically remains on the ground only one or two days at a time, but remained for 16 days in 2010 (January 30 to February 14).

The James River reaches tidewater at Richmond where flooding may occur in every month of the year, most frequently in March and least in July. Hurricanes and tropical storms have been responsible for most of the flooding during the summer and early fall months. Hurricanes passing near Richmond have produced record rainfalls. In 1955, three hurricanes brought record rainfall to Richmond within a six-week period. The most noteworthy of these were Hurricane Connie and Hurricane Diane that brought heavy rains five days apart. And in 2004, the downtown area suffered extensive flood damage after the remnants of Hurricane Gaston dumped up to 12 inches (300 mm) of rainfall.[42]

Damaging storms occur mainly from snow and freezing rain in winter and from hurricanes, tornadoes, and severe thunderstorms in other seasons. Damage may be from wind, flooding, or rain, or from any combination of these. Tornadoes are infrequent but some notable occurrences have been observed within the Richmond area.
end