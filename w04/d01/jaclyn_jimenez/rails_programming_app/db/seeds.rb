# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

programmers_array =
[
  [Yukihiro Matz,matz_translated,http://si0.twimg.com/profile_images/771113478/NAK_0146-00_bigger.jpg]
  [Yehuda Katz,wycats,http://si0.twimg.com/profile_images/3250074047/46d910af94e25187832cb4a3bc84b2b5_bigger.jpeg]
  [Tom Dale,tomdale,http://si0.twimg.com/profile_images/1317834118/avatar_bigger.png]
  [John Resig,jeresig,http://si0.twimg.com/profile_images/3710418056/50890b833c898cab45237a461e873807.jpeg]
  [Jeremy Ashkenas,jashkenas,http://si0.twimg.com/profile_images/3361564894/aae1382aa87a9c55e4f01efb4e545ed5.jpeg]
  [Lea Verou,LeaVerou,http://si0.twimg.com/profile_images/1716232467/avatar-logo_bigger.png]
  [Mike Bostock,mbostock,http://si0.twimg.com/profile_images/2945658112/8d073762d17fb1e46733ea92c09d071a_bigger.jpeg]
  [Paul Irish,paul_irish,http://si0.twimg.com/profile_images/2910976341/7d972c32f3882f715ff84a67685e6acf_bigger.jpeg]
  [Eric A. Meyer,meyerweb,http://si0.twimg.com/profile_images/2914972019/07444a3860a37b23b408f2a432ddf209.png]
  [Mark Otto,mdo,http://si0.twimg.com/profile_images/1422223766/mdo-upside-down-shades.jpg]
  [Katrina Owen,kytrinyx,http://si0.twimg.com/profile_images/1433554316/retro-vintage_bigger.jpeg]
  [Jacob Thorton,fat,http://si0.twimg.com/profile_images/378800000535206938/e694bca5d8f0b90afba7e4f7f93afe2c_bigger.jpeg]
  [David Heinemeier Hansson,dhh,http://si0.twimg.com/profile_images/2556368541/alng5gtlmjhrdlr3qxqv.jpeg]
  [Brendan Eich,BrendanEich,http://si0.twimg.com/profile_images/378800000422625578/aa4926528b3a1297ae2d9f5738d537a4_bigger.jpeg]
  [Hampton Catlin,hcatlin,http://si0.twimg.com/profile_images/3683409491/5c96c385382d455dff9de9c850378c52_bigger.jpeg]
  [Aaron Patterson,tenderlove,http://si0.twimg.com/profile_images/378800000325798111/ca48276f8ebbbbac9c6ce83aac3c8548_bigger.jpeg]
]

# reads in each line of string
programmers_array.each do |array|
  added_name = array[0]
  added_username = array[1]
  added_pic = array[2]
  #programmer is created
  new_programmer = Programmer.new
  #set name, username and pic
  new_programmer.name = added_name
  new_programmer.twitter_username = added_username
  new_programmer.twitter_pic = added_pic
  #saves the new programmer to the table
  new_programmer.save
end
