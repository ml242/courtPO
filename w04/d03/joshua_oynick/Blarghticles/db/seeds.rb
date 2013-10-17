# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Article.delete_all
Comment.delete_all

a1 = Article.create(title: 'Study Finds Oreos to be Best Cookies Ever', body: 'If you have ever found yourself unable to resist just one more Oreo, you’re not alone. That “stuf” is like crack, neurologically speaking. A new study from Connecticut College shows that Oreos are as addictive as cocaine, at least for lab rats. According to the new study,  eating the iconic black and white cookies activated more neurons in the rat brain’s “pleasure center” than drugs such as cocaine. “I haven’t touched an Oreo since doing this experiment,” neuroscience assistant professor Joseph Schroeder said in a school press release. The research looked at the rats’ behaviors and the effects the cookies had on their brains. Rats were put into a maze and given the choice of hanging out near rice cakes or Oreos. The tasty sandwich cookies won that popularity contest handily. Those results were compared to a different test, where rats were given the choice of loitering in an area of a maze where they were injected with saline or in another corner where they could get a shot of cocaine or morphine. The rats in the study liked the cookies about as much as they liked the drugs, congregating near the cookie side of the maze as much as they would on the drug side.')



