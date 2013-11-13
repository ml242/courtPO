require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
erb :game
end

get '/game' do
  @user = params[:query]
  @computer = ["piedra", "papel", "tijera"].shuffle.sample
  @positive_slang = ["A todos les llega su momento de gloria (Every dog has its day)", "Abundancia y soberbia andan en pareja (Plenty breed pride or, literally, abundance and pride walk in pairs)", "Me hace muy feliz (it makes me very happy)"].shuffle.sample
  @negative_slang = [ "Me cago en la leche! (Shit I've had bad luck! Literally 'I shit in the milk'", "Pinche idiota (Fuckin' idiot)", "Vete a freir esparragos! (Go off and fry asparagus. Basically disappear and do whatever you want as long as it's out of my sight!)", "Un conazo (Lit. A giant vagina. A real pain (figuratively speaking)", "Eres un huevon (You are lazy! Explanation: in latin culture, a huevon is a person who is so lazy that his testicles drag on the ground. derived from the use of the spanish word huevos (eggs) as a slang word for testicles. A huevona is a the female equivalent, although a bit less true-to-form given the lack of a droopy ballsack!)"].shuffle.sample
  @neutral_slang= ["Algo es algo; menos es nada (Half a loaf is better than no bread)", "Que mierda de juego! (What shitty game!)", "Borron y cuenta nueva (Let bygones be bygones)"].shuffle.sample
erb :game
end

