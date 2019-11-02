require 'date'

country = Country.new(name: "Belarus", position_in_country_table: 15)
country.save
championship = Championship.new(country_id: 1, position_in_top: 14, name: "Pemier Liga")
championship.save
club = Club.new(name: "Barcelona", championship_id: 1)
club.save
player = Player.new( name: "Messi", club_id: 1, country_id: 1, age: 22, salary: 10000)
player.save
referee = Referee.new(name: "Августин")
referee.save
second_club = Club.new(name: "Real Madrid", championship_id: 1)
second_club.save
match = Match.new(first_club_id: 1, second_club_id: 2, date: DateTime.new(2001,2,3,4,5,6))
match.save
