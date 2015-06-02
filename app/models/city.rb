class City < ActiveRecord::Base
  has_many :weather_days

  # def text
  #   @new_york_blurb =
  #   "Home to the Empire State Building, Times Square, Statue of Liberty and other iconic sites, New York City is a fast-paced, globally influential center of art, culture, fashion and finance. The city's 5 boroughs sit where the Hudson River meets the Atlantic Ocean, with the island borough of Manhattan at the 'Big Apple's' core."

  #   @new_york_weather =
  #   "Winters are cold and damp. The average temperature in January is almost 33 °F. However, winter temperatures can vary from 10 °F up to 50 °F. Spring and autumn are usually mild with low humidity. Average summer temperature hovers around 76.5 °F in July and humidity is about 72%. Temperatures can exceed 90 °F but rarely top 100 °F. The coldest temperature on record is -15 °F, which occurred on February 9, 1934. The hottest day happened on July 9, 1936, making it all the way up to 106 °F. The city receives about 50 inches of rain annually, and average winter snowfall has been about 26 inches."

  #new york winter:
  #http://www.metro.us/local/winter-storm-snow-forecasted-for-new-york-city/tmWnat---1cKDhr7sMAfK2/new-york-city-snow-GETTY-614x408.jpg
  #http://www.venere.com/blog/images/new-york-winter.jpg
  #http://a0.web.wt-cdn.com/post_items/images/000/021/743/original/new-york-city-winter.jpg
  #http://nycphoto.smugmug.com/Photography/New-York-City-Photography/i-W8MPdLh/0/M/New%20York%20City%20-%20Snow%20-%20Winter%20Night%20in%20Midtown---M.jpg
  #http://i.telegraph.co.uk/multimedia/archive/01781/newyork-winter3_1781739b.jpg

  #new york spring:
  #http://blog.hotelbelleclaire.blogdev.hebsdigital.com/wp-content/uploads/2014/03/centralparkspring.jpg
  #http://pics4.city-data.com/cpicc/cfiles30034.jpg
  #http://isardasorensen.files.wordpress.com/2013/04/tp-blossoms-in-full-swing-nyc.jpg
  #http://candychang.com/main/wp-content/uploads/2010/09/nyc-11-spring-street1.jpg
  #http://cdn1.theodysseyonline.com/files/2015/02/15/63559619277823374227626866_new-york-city.jpg

  #new york summer:
  #https://c1.staticflickr.com/7/6069/6076947780_040efdb90a_b.jpg
  #http://www.archidose.org/Blog/summer08-01.jpg
  #http://cdn.slashgear.com/wp-content/uploads/2011/06/central-park-new-york-wallpaper-820x420.jpg
  #http://www.nyhabitat.com/blog/wp-content/uploads/2013/05/astoria-swimming-pool-queens-summer-nyc-new-york.jpg
  #http://farm4.static.flickr.com/3165/3056953388_4512c89d0a.jpg

  #new york autumn:
  #https://isardasorensen.files.wordpress.com/2011/11/tp-central-park-foliage-from-above-11-12-11.jpg
  #http://i.telegraph.co.uk/multimedia/archive/03030/Central_park_NYC_3030396b.jpg
  #http://b.citypass.com/blog/post/20120928-1-centralpark.jpg
  #http://images.fineartamerica.com/images-medium-large-5/autumn-central-park-elm-trees-new-york-city-vivienne-gucwa.jpg
  #http://cdn.c.photoshelter.com/img-get/I0000UQqOu7Cqnrc/s/650/650/JA111409A-13.jpg

  #   @chicago_blurb =
  #   "Chicago, on Lake Michigan in Illinois, is among the largest cities in the U.S. Famed for its bold architecture, it has a skyline bristling with skyscrapers such as the iconic John Hancock Center, sleek, 1,451-ft. Willis Tower and neo-Gothic Tribune Tower. The city is also renowned for its museums, including the Art Institute and its expansive collections, including noted Impressionist works."

  #   @chicago_weather =
  #   "The city experiences four distinct seasons. Summers are warm and humid, with averages in July hitting 76 °F, while only occasionally exceeding 90 °F. Winters are cold and snowy with few sunny days, and the normal January high is just below freezing. Spring and autumn are mild seasons with low humidity. Chicago's highest official temperature of 105 °F was recorded on July 24, 1934, and the lowest official temperature of −27 °F was recorded on January 20, 1985."

  #chicago winter:
  #https://blog.eventreviews.com/images/wysiwyg/winter_in_chicago.jpg
  #http://static.chicagoweathercenter.com/media/2013/03/nickulivieri3713.jpg
  #http://media.nbcchicago.com/images/654*436/chicago+area+snow.jpg
  #http://images.scribblelive.com/2014/1/6/fa5b5d84-7202-4c8d-b152-9cb9cfd1c7e3.jpg
  #http://2.bp.blogspot.com/_rNGHGDmZH2k/TUeZ3ZtsXyI/AAAAAAAAFsc/22_7KcSpyRA/s1600/chicago+winter.png

  #chicago spring:
  #http://ihadabiglunch.files.wordpress.com/2014/04/chicago-spring-jeff-lewis.jpg
  #http://chicagoraffaello.com/wp-content/uploads/2015/03/Chicago-Spring-2-600x400.jpg
  #http://www.joeyblsphotography.com/wp-content/uploads/2013/12/Chicago-in-Spring_700.jpg
  #http://happyheartholistichealth.com/wp-content/uploads/2013/03/Chicago-Spring-640w.jpg
  #http://www.bedandbreakfastnetwork.com/blog/wp-content/uploads/2009/04/spring-vacation_06.jpg

  #chicago summer:
  #http://svcdn.simpleviewinc.com/v3/cache/chicago/DDB185D99D21473E97E2AFD19259B480.jpg
  #http://chicago.urbanturf.com/images/articles/2011/04/Chicago_summer_sublets.jpg
  #http://www.nileguide.com/destination/blog/chicago/files/2010/04/zoo.jpg
  #http://www.conciergepreferred.com/media/k2/items/cache/d5d321f89fb2cb3faeb603ca66861825_XL.jpg
  #http://svcdn.simpleviewinc.com/v3/cache/chicago/3E57B77E5A88814B9DC4B184AF2B0EF9.jpg

  #chicago autumn:
  #https://ws.elance.com/file/5.jpg?crypted=Y3R4JTNEcG9ydGZvbGlvJTI2ZmlkJTNEMTI1NDUzNjM3JTI2cmlkJTNELTElMjZwaWQlM0QyNTk4MDkz
  #http://static.chicagoweathercenter.com/media/2012/10/facebook_-212360648.jpg
  #http://img1.goodfon.su/wallpaper/big/9/f9/chicago-chikago-neboskreby-6896.jpg
  #http://media-cdn.tripadvisor.com/media/photo-s/02/fe/e2/62/travelodge-chicago-downtown.jpg
  #http://www.goodtravelyoung.com/wp-content/uploads/2014/10/cities-to-visit-for-fall-colors-chicago.jpg



  #   @san_francisco_blurb =
  #   "San Francisco, in northern California, is a city on the tip of a peninsula surrounded by the Pacific Ocean and San Francisco Bay. It's known for its hilly landscape, year-round fog, iconic Golden Gate Bridge, cable cars and colorful Victorian houses. The Financial District's Transamerica Pyramid is its most distinctive skyscraper. In the bay sits Alcatraz Island, site of the notorious former prison."

  #   @san_francisco_weather =
  #   "San Francisco's climate is generally characterized by moist mild winters and dry summers. Since it is surrounded on three sides by water, San Francisco experiences remarkably mild year-round climate with little seasonal variation. Among major U.S. cities, San Francisco has the coolest average temperatures for June, July, and August. The late summer and early fall are the warmest times of the year. Temperatures rarely reach or exceed 80 °F.The dry period of May to October is mild to warm, with average temperatures topping out at 63 °F in September. The rainy period of November to April is slightly cooler, with the lowest average temperature hitting in January at 51 °F. It only rains on average about 73 days per year, and annual precipitation is about 24 inches. The highest recorded temperature was 103 °F on June 14, 2000. The lowest recorded temperature was 27 °F on December 11, 1932."

  #san francisco winter:
  #https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSo_huHNhFtRC5Fl0qnD90HN_pot2Pg3O1f3Onn1zgBUFJHOEGZ
  #http://wallpaperswa.com/thumbnails/detail/20120616/water%20cityscapes%20bridges%20san%20francisco%20oakland%20bay%201920x1200%20wallpaper_wallpaperswa.com_87.jpg
  #http://www.sftodo.com/images/goldengate/golden-gate-bridge-night.jpg
  #https://cbssanfran.files.wordpress.com/2014/12/460313270_8.jpg?w=594
  #http://gaycationmagazine.com/wp-content/uploads/san-francisco.jpg

  #san francisco spring:
  #http://srstern.com/wp-content/uploads/2012/03/Spring-in-San-Fran-1.jpg
  #https://cbssanfran.files.wordpress.com/2015/04/2014_0721.jpg?w=603
  #https://gigaom2.files.wordpress.com/2012/12/painted-ladies.jpg?quality=80&strip=all&w=640
  #http://blog.sfgate.com/inberkeley/wp-content/blogs.dir/2263/files/2012/12/Spring-storms-over-Berkeley-by-Joe-Parks.jpg
  #https://s-media-cache-ak0.pinimg.com/736x/cd/f8/da/cdf8dabd9eb4941d50e13fdee719f346.jpg

  #san francisco summer:
  #http://www.robertcampbellphotography.com/Images/San%20Francisco/Summer-Sunset.jpg
  #http://cdnx.jetcdn.com/static/images/product/travelFeatures/fullimage-99005-1368715472.jpg
  #http://images.fineartamerica.com/images-medium-large/usa-california-san-francisco-cityscape-with-summer-fog-dusk-don-smith.jpg
  #http://static.flickr.com/77/182006254_25cd5cb84f.jpg
  #http://i-wish-you-were-here.com/sites/default/files/imagepicker/1/Laguna_Beach_people.jpg

  #san francisco autumn:
  #https://c1.staticflickr.com/5/4103/5069953687_9afd1d00d8.jpg
  #http://ift.tt/1rdVPAb
  #http://24.media.tumblr.com/0af4a139f2be6e67c9a3d8e20cbd3de6/tumblr_mww09cYb6B1szf9fjo1_500.jpg
  #http://wallpaperswa.com/thumbnails/detail/20120606/water%20sun%20bridges%20golden%20gate%20bridge%20san%20francisco%201920x1080%20wallpaper_wallpaperswa.com_81.jpg
  #http://www.wall321.com/thumbnails/detail/20120531/water%20cityscapes%20bridges%20san%20francisco%20oakland%20bay%201920x1200%20wallpaper_www.wall321.com_38.jpg

  #   @richmond_blurb =
  #   "Richmond, the capital of Virginia, is among America’s oldest cities. Patrick Henry, a U.S. Founding Father, famously declared “Give me liberty or give me death” at its St. John's Church, leading to the Revolutionary War. The White House of the Confederacy, the Confederate States Army headquarters during the Civil War, is now a museum in Court End, a neighborhood known for Federal-style mansions."

  #   @richmond_weather =
  #   "Richmond has hot and humid summers and generally cool winters. The coldest weather normally occurs from late December to early February, and the average temperature in January is 38 °F. Temperatures tend to drop to freezing levels in early November and usually last until early April. The coldest date on record happened on January 19, 1940, when the temperature got down to −12 °F, but it rarely drop below 0 °F. Snow has been recorded during seven of the twelve months. Falls of 3 inches or more within 24 hours occur an average once per year. Annual snowfall is usually light, averaging 10.5 inches per season. The average in July is about 80 °F. The hottest date on record is 107 °F, which occurred on August 6, 1918. Even at it's hottest, the temperature rarely reach 100 °F."
  # end

  #richmond winter:
  #http://www.virginiaphotos.net/wp-content/uploads/2012/01/snow.jpg
  #http://www.ontariopics.com/p2/m/Richmond-Hill/Winter-Carnival-2010-9115.jpg
  #http://www.virginiaphotos.net/wp-content/uploads/2011/01/DSC_02731.jpg
  #https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcSgXa4SK_Yzpfgw6_REd3CXbMf7yHYiWEBGfoePjwQTz_C8SGZi
  #http://www.mobileofficepros.com/wp-content/uploads/2014/01/richmond.jpg

  #richmond spring:
  #http://img.webmd.com/dtmcms/live/webmd/consumer_assets/site_images/articles/health_tools/top_allergy_cities_slideshow/getty_rf_photo_of_richmond_virginia_skyline.jpg
  #http://bloximages.newyork1.vip.townnews.com/richmond.com/content/tncms/assets/v3/editorial/1/2e/12e0b04e-9b48-11e2-bb3c-001a4bcf6878/515a54df20ca9.image.jpg
  #http://static.travel.usnews.com/images/articles/93/Richmond.jpg
  #https://imagefilter.app.compendium.com/image?url=QcNeMIOA0MESEz7Pn%2FjewTbIX4Xt1rRLXRv6KTxJjwEbNEy6lq0knlQWiSpvkcF4X3L9GCKSYWtpLRaIPSXkArCE%2Fo%2Br8SzHHpTmocUljxb9HiYRA2NKNJRXcv27lonTTc4CaaJsTWGZpG5Woc8u1GyoIfFEorOCj%2FnQStjc9mLBfQ4ikwWkbq8U6wgnVMitNZkuRdS1k9lll6ILrg62yQxuq9ISrSC2a3aL4CCm0i%2FlGB7Hz%2Binrvxgmn%2BinUFO&secure=1&align=center+center&cwidth=1000&cheight=425&width=1000
  #http://www.bloomberg.com/ss/09/07/0720_richmond_school_tour/image/boatwright_spring.jpg

  #richmond summer:
  #http://www.rvaxa.com/site/wp-content/uploads/2014/05/0703112200221richmond__virginia_sunrise_thu.jpg
  #https://mgtvwric.files.wordpress.com/2015/05/richmond-skyline-am.jpg?w=650
  #http://www.insidevancouver.ca/wp-content/uploads/2012/09/richmond-night-market-.jpg
  #https://c1.staticflickr.com/9/8013/7154724096_2aa6dc8e69_b.jpg
  #http://onewayrichmond.com/wp-content/uploads/2014/04/1-a-1-xwe3cr45vbty6mi9op.-1.jpg

  #richmond autumn:
  #http://gallery.photo.net/photo/8220674-lg.jpg
  #http://www.natureflip.com/sites/default/files/photo/richmond-park/richmond-park-beautiful-colours-in-autumn.jpg
  #http://img-fotki.yandex.ru/get/9251/226260384.27/0_10304f_3ad586b1_orig
  #https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRpzX8fcpXLn0LRj6DsgiLYECavU-84s1WaZWSIivol1j0FnR9yqw
  #http://media-cdn.tripadvisor.com/media/photo-s/05/11/d7/81/autumn-colour-at-brompton.jpg


  #Richmond smells like:
  # Native flowers: honeysuckle, magnolias, wild roses and other semi-tropical flowers grow wild here. "Green" smell: Lots of trees(especially pine) and shrubery, it smells very fresh and clean. Rain. Very rainy climate. Salt water. Low tide. Dust and asphalt. Something is always "under construction" here. Well, it used to be worse. My hometown once had nothing but fertilizer plants(thank God for pollution control laws!), dairy farms, and growers of collards -- ever smell collards left to rot in the fields?




end