# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#

file = File.open("#{Rails.root}/db/pokemon.json", 'r')

json_data = file.read

pokemon_json = JSON.parse(json_data)

pokemon_json.each do |k, v|
  p1 = Pokemon.create(
    :name => v["name"],
    :type1 => v["type1"],
    :type2 => v["type2"],
    :ability1 => v["ability1"],
    :gender_ratio => v["genderRatio"],
    :experience_curve => v["experienceCurve"],
    :catch_rate => v["catchRate"],
    :base_exp => v["baseExp"],
    :base_stats_hp => v["baseStats"]["hp"],
    :base_stats_atk => v["baseStats"]["atk"],
    :base_stats_def => v["baseStats"]["def"],
    :base_stats_spatk => v["baseStats"]["spAtk"],
    :base_stats_spdef => v["baseStats"]["spDef"],
    :base_stats_speed => v["baseStats"]["speed"],
    :evolve_to => v["evolveTo"],
    :evolve_level => v["evolveLevel"],
    :learnabletm => v["learnableTM"],
  )
  puts "Added ID: #{p1.id} - #{p1.name}"
end
