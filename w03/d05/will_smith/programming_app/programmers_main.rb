require 'sinatra'
require 'sinatra/reloader' if development?
require 'active_record'
require 'pry'
require_relative 'import'

bios = [
  "Earned praise for lecturing about pubic lice in Pensacola, FL. Won several awards for developing ice cream for fun and profit. Spent 2002-2008 donating UFOs in Africa. Spent the better part of the 90's consulting about toy trucks in Pensacola, FL. Spent 2001-2006 merchandising Magic 8-Balls in Los Angeles, CA. Prior to my current job I was getting my feet wet with corncob pipes in Cuba.",
  "Spent 2002-2010 working on banjos in New York, NY. My current pet project is consulting about hobos in Minneapolis, MN. Spent a year researching puppets in the government sector. A real dynamo when it comes to importing xylophones for the government. Once had a dream of implementing the elderly in Gainesville, FL. Spent college summers deploying mosquito repellent in Bethesda, MD.",
  "Was quite successful at implementing junk food in Cuba. Spent a year researching pond scum with no outside help. Spent several years working on glucose on Wall Street. Managed a small team getting my feet wet with yard waste for no pay. Had a brief career building robotic shrimp in Tampa, FL. Spoke at an international conference about developing jungle gyms in Gainesville, FL.",
  "Spent childhood importing Mr. Potato Heads on the black market. Spent 2001-2005 buying and selling country music with no outside help. Spent a year promoting pubic lice in Minneapolis, MN. Spoke at an international conference about licensing heroin in Africa. Have a strong interest in working with bassoons in Atlantic City, NJ. Set new standards for lecturing about Magic 8-Balls in the UK.",
  "Spent 2002-2009 selling sauerkraut in Deltona, FL. In 2008 I was exporting toy trucks in Libya. Spent 2001-2004 buying and selling chess sets in the UK. Spent 2001-2007 implementing toy planes in Hanford, CA. Spent the 80's writing about weed whackers in Jacksonville, FL. Lead a team lecturing about chess sets in Deltona, FL.",
  "Spent 2002-2009 creating marketing channels for dust in the financial sector. Had moderate success working on cellos on the black market. Enthusiastic about promoting dandruff in Hanford, CA. Gifted in marketing Easter candy in Suffolk, NY. Spent 2001-2004 building fatback in Phoenix, AZ. Had a brief career researching circus clowns for the underprivileged.",
  "Spent 2001-2006 writing about bathtub gin in Phoenix, AZ. Garnered an industry award while buying and selling Roombas in Gainesville, FL. In 2008 I was writing about foreign currency for the government. My current pet project is promoting chess sets in Suffolk, NY. Spent 2002-2010 writing about muffins in Ohio. In 2008 I was managing inflatable dolls in Deltona, FL.",
  "Spent 2001-2008 supervising the production of tar in Libya. Enthusiastic about selling banjos in Gainesville, FL. Gifted in analyzing chess sets in Minneapolis, MN. Won several awards for managing Uno for farmers. Spent a year buying and selling weed whackers worldwide. Have a strong interest in donating hugs in Suffolk, NY.",
  "Was quite successful at creating marketing channels for Magic 8-Balls in Minneapolis, MN. Spent several years supervising the production of pond scum in the financial sector. Gifted in selling saliva for the government. Spent 2001-2004 working with easy-bake-ovens for the government. What gets me going now is importing dogmas in Naples, FL. Spent several years getting to know corncob pipes on Wall Street.",
  "Lead a team investing in bullwhips in Suffolk, NY. Spent 2001-2005 lecturing about chess sets in Washington, DC. Spent high school summers lecturing about tar in Mexico. At the moment I'm exporting bacon in Nigeria. Have some experience developing strategies for wool in Prescott, AZ. Have a strong interest in developing hugs for the underprivileged.",
  "Spent 2001-2004 working on ice cream in Nigeria. In 2008 I was getting to know junk bonds in Cuba. A real dynamo when it comes to importing muffins in the UK. Earned praise for working on pubic lice in Los Angeles, CA. Once had a dream of getting to know tinker toys for the underprivileged. Earned praised for my work writing about childrens books in Salisbury, MD.",
  "Spent 2001-2004 selling childrens books in Los Angeles, CA. Crossed the country training shaving cream for the underprivileged. Spent 2002-2007 exporting crickets in the government sector. Spent 2002-2009 developing strategies for fatback in Nigeria. Spent 2001-2006 exporting xylophones in Fort Walton Beach, FL. Spent 2002-2008 writing about spit-takes in Washington, DC.",
  "Earned praise for implementing jack-in-the-boxes for fun and profit. Garnered an industry award while implementing bathtub gin in Gainesville, FL. Had a brief career creating marketing channels for salsa in Ocean City, NJ. Spent 2001-2005 consulting about bullwhips in Ocean City, NJ. Gifted in merchandising shaving cream in Miami, FL. Had a brief career analyzing Elvis Presley in Pensacola, FL.",
  "Had some great experience creating marketing channels for wooden tops for the government. Developed several new methods for donating birdhouses in Los Angeles, CA. Enthusiastic about working with bagpipes in Jacksonville, FL. Lead a team getting my feet wet with sheep for farmers. Spent 2002-2008 implementing gravy in Africa. Spent 2002-2008 getting to know methane in Prescott, AZ.",
  "In 2008 I was merchandising g.i. joes in Suffolk, NY. Prior to my current job I was investing in heroin with no outside help. Spent 2002-2007 exporting licorice in Fort Lauderdale, FL. Earned praise for getting to know dandruff worldwide. Won several awards for researching tobacco in Naples, FL. A real dynamo when it comes to short selling junk food in Minneapolis, MN."
]

after do
  ActiveRecord::Base.connection.close
end

get '/' do
  redirect to '/programmers'
end

get '/programmers' do
  @programmers = Programmer.all
  erb :programmers
end

get '/programmers/:id' do
  id = params[:id]
  programmer = Programmer.find(id)
  @name = programmer['name']
  @twitter_username = programmer['twitter_username']
  @twitter_pic = programmer['twitter_pic']
  @bio = bios.sample
  erb :programmer
end
