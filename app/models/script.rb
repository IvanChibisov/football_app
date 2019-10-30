require 'date'

country = Country.new
country.name = "Belarus"
country.position_in_country_table = 15
country.save
championship = Championship.new
championship.country_id = 1
championship.position_in_top = 14
championship.name = "Premier Liga"
championship.save
club = Club.new
club.name = "Barcelona"
club.campionship_id = 1
club.save
player = Player.new
player.name = "Messi"
player.club_id = 1
player.country_id = 1
player.age = 22
player.salary = 10000
player.save
referee = Referee.new
referee.name = "Августин"
referee.save
second_club = Club.new
club.name = "Real Madrid"
club.campionship_id = 1
club.save
match = Match.new
match.second_club_id = 2
match.first_club_id = 1
match.date = DateTime.new(2001,2,3,4,5,6)
match.save
