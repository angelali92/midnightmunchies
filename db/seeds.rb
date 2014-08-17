# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
# rake db:setup
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

eateries = Eatery.create([
    {name:"BCD Tofu", image_url:"http://www.lataco.com/taco/wp-content/uploads/1729.jpg", address:"2700 Alton Pkwy Ste 135 Irvine, CA 92606", phone_num:"(949) 553-6465", website:"http://www.yelp.com/biz/bcd-tofu-house-irvine?osq=Open+24+Hours", rating: "4", drive_thru:"false"}, 
    {name:"Denny's", image_url:"http://static6.businessinsider.com/image/50e701c369bedd0433000016-480/dennys.jpg", address:"14962 Sand Canyon Ave Irvine, CA 92618", phone_num:"(949) 786-2600", website:"http://www.yelp.com/search?find_desc=food&find_loc=Irvine%2C+CA&ns=1#open_time=8860", rating:"2", drive_thru:"false"}, 
    {name:"Jack in the Box", image_url:"http://s3-media2.fl.yelpcdn.com/bphoto/KtcGzSRIj3wk2nr8Aab3OQ/l.jpg", address:"6565 Burt Rd Irvine, CA 92618", phone_num:"(949) 733-8031", website:"http://www.yelp.com/biz/jack-in-the-box-irvine-4", rating:"2", drive_thru:"true"}, 
    {name:"Norms's Restaurant", image_url:"http://s3-media4.fl.yelpcdn.com/bphoto/I4IGvmYS6_wUozIbN6-Y_Q/l.jpg", address:"2150 Harbor Blvd Costa Mesa, CA 92627", phone_num:"(949) 631-0505", website:"http://www.yelp.com/biz/norms-restaurant-costa-mesa", rating:"3", drive_thru:"false"}, 
    {name:"Alejandro's", image_url:"http://s3-media2.fl.yelpcdn.com/bphoto/IzWI2QvoKuYCdy6R6npWqA/l.jpg", address:"801 W 19th St Costa Mesa, CA 92627", phone_num:"(949) 631-2561", website:"http://www.yelp.com/biz/alejandros-mexican-food-costa-mesa", rating:"5", drive_thru:"true"}, 
    {name:"Donut Star", image_url:"http://s3-media1.fl.yelpcdn.com/bphoto/QNYVkQ17jFBE_7nXlUEjJQ/l.jpg", address:"5365 Alton Pkwy Ste C Irvine, CA 92604", phone_num:"(949) 551-9744", website:"http://www.yelp.com/biz/donut-star-irvine-2", rating:"4", drive_thru:"false"}, 
    {name:"McDonald’s", image_url:"http://s3-media3.fl.yelpcdn.com/bphoto/uVdRSSFqgDbFGKsKYWzl6A/l.jpg", address:"5445 Alton Pkwy Irvine, CA 92604", phone_num:"(949) 551-4700", website:"http://www.yelp.com/biz/mcdonalds-irvine-8", rating:"3", drive_thru:"false"
}])


