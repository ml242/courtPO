require_relative 'animal'
require_relative 'person'
require_relative 'shelter'
require_relative 'menu'

$persons = load_json_file( 'persons_db.json' )
$animals = load_json_file( 'animals_db.json' )
$shelters = load_json_file( 'shelters_db.json' )

menu = Menu.new

while true

  until $user_type == 'person' || 'animal_shelter'
    menu.type
  end

  until $user_status == 'logged_in'
    menu.login
  end

  while $user_status == 'logged_in'
    menu.main
  end

  break if user_input.downcase == 'q'

end

write_json_file( $persons, 'persons_db.json')
write_json_file( $animals, 'animals_db.json')
write_json_file( $shelters, 'shelters_db.json')

puts "bye"