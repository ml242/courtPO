CREATE TABLE entries (
  id SERIAL PRIMARY KEY,
  author VARCHAR,
  photo_url TEXT,
  date_taken DATE
)

entry_5 = Entry.create(:author => 'Amy',
  :photo_url => 'http://www.theexpeditioner.com/wordpress/wp-content/uploads/2009/06/top10asia11.jpg',
  :date_taken => '2012-09-23')

entry_1 = Entry.create(:author => 'David',
  :photo_url => 'http://farm4.static.flickr.com/3296/3139388426_d89fe0971f.jpg',
  :date_taken => '2012-04-23')

entry_2 = Entry.create(:author => 'Amy',
  :photo_url => 'http://1.bp.blogspot.com/-w-zLRIeLPd0/UZh1QOHm4dI/AAAAAAAABuc/aarnr6JWoZw/s1600/amazing-scenery-1.jpg',
  :date_taken => '2013-07-23')

entry_3 = Entry.create(:author => 'Kooky',
  :photo_url => 'http://www.wallpaperstravel.com/wallpapers/east-asia-beautiful-scenery-1280x720.jpg',
  :date_taken => '2013-07-23')

entry_4 = Entry.create(:author => 'Amanda',
  :photo_url => 'http://www.deshow.net/d/file/travel/2009-05/travel-tour-china-scenery--558-2.jpg',
  :date_taken => '2013-07-23')