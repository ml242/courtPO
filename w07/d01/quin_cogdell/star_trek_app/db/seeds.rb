CrewMember.delete_all
StarShip.delete_all

c1 = CrewMember.create(name: 'Kirk', shirt_color: 'yellow', on_ship: true)
c2 = CrewMember.create(name: 'Spock', shirt_color: 'blue', on_ship: true)
c3 = CrewMember.create(name: 'Bones', shirt_color: 'blue', on_ship: true)
c4 = CrewMember.create(name: 'Sulu', shirt_color: 'yellow', on_ship: true)
c5 = CrewMember.create(name: 'Scotty', shirt_color: 'red', on_ship: true)

s1 = StarShip.create(name: "U.S.S. Enterprise NCC-1701", shield_strength: 100)

s1.crew_members = [c1, c2, c3, c4, c5]
