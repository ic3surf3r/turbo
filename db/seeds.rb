require 'faker'
# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   e
puts "Deleting users"
User.destroy_all

puts "Deleting clubs"
Club.destroy_all



puts "Creating users"
bob = User.create!(email: "bob@email.com", first_name: "Bob", last_name: "Smith", password: "123123")
stacy = User.create!(email: "stacy@email.com", first_name: "Stacy", last_name: "Valentine", password: "123123")
kevin = User.create!(email: "kevin@email.com", first_name: "Kevin", last_name: "Elevin", password: "123123")

puts "Creating White Starr"
white_star = Club.create!(name: "Royal White Star A.C.", description: "Hockey team in first division", address: "Chemin du Struykbeken 2, 1200 Bruxelles")
ClubMember.create!(club_id: white_star.id, user_id: bob.id)
ClubMember.create!(club_id: white_star.id, user_id: stacy.id, is_manager: true)
ClubMember.create!(club_id: white_star.id, user_id: kevin.id)

first_team = Team.create!(club_id: white_star.id, name: "First team", sport: "Hockey")
TeamMember.create!(team_id: first_team.id, user_id: stacy.id)
TeamMember.create!(team_id: first_team.id, user_id: bob.id)
TeamMember.create!(team_id: first_team.id, user_id: kevin.id, is_coach: true)

senior_team = Team.create!(club_id: white_star.id, name: "Senior team", sport: "Hockey")
TeamMember.create!(team_id: senior_team.id, user_id: kevin.id, is_coach: true)


30.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(email: "#{first_name}.#{last_name}@email.com", first_name: first_name, last_name: last_name, password: "123123")
  ClubMember.create!(club_id: white_star.id, user_id: user.id)
  random = rand(1..2)
  if random == 1
    TeamMember.create!(team_id: first_team.id, user_id: user.id)
    puts "created first team team member"
  elsif random == 2
    TeamMember.create!(team_id: senior_team.id, user_id: user.id)
    puts "created senior team team member"
  end
end
puts "created 30 extra White star members"

main_field = Location.create!(name: "Main field", description: "Main field where the most important games are played every week", club_id: white_star.id)
jogo_um = Event.create!(start_time: DateTime.new(2025,2,3,4,5,6), end_time: DateTime.new(2025,2,3,6,5,6), description: "Game between White Star and Louvain-la-neuve @Main field", title: "White Star vs Louvain-la-Neuve", location_id: main_field.id, team_id: first_team.id )

puts "Creating Louvain-la-Neuve"
louvain_la_neuve = Club.create!(name: "Louvain-la-Neuve Club", description: "Club de sport ", address: "Bd Baudouin 1er, 1348 Ottignies-Louvain-la-Neuve")
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: stacy.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: bob.id, is_manager: true)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: kevin.id)

first_hockey_team = Team.create!(club_id: louvain_la_neuve.id, name: "First Hockey Team", sport: "hockey")
TeamMember.create!(team_id: first_hockey_team.id, user_id: stacy.id)
TeamMember.create!(team_id: first_hockey_team.id, user_id: bob.id, is_coach: true)
TeamMember.create!(team_id: first_hockey_team.id, user_id: kevin.id)

first_football_team = Team.create!(club_id: louvain_la_neuve.id, name: "First Football Team", sport: "football")
TeamMember.create!(team_id: first_football_team.id, user_id: kevin.id, is_coach: true)

30.times do
  first_name = Faker::Name.first_name
  last_name = Faker::Name.last_name
  user = User.create!(email: "#{first_name}.#{last_name}@email.com", first_name: first_name, last_name: last_name, password: "123123")
  ClubMember.create!(club_id: white_star.id, user_id: user.id)
  random = rand(1..2)
  if random == 1
    TeamMember.create!(team_id: first_hockey_team.id, user_id: user.id)
    puts "created first team team member"
  elsif random == 2
    TeamMember.create!(team_id: first_football_team.id, user_id: user.id)
    puts "created senior team team member"
  end
end
puts "created 30 Louvain-la-neuve members"

nilton_santos = Location.create!(name: "Louvain-la-Neuve hockey stadium", description: "Main Louvain-la-Neuve hockey staidum where all the magic happens", club_id: louvain_la_neuve.id)
jogo_dois = Event.create!(start_time: DateTime.new(2025,2,3,4,5,6), end_time: DateTime.new(2025,2,3,6,5,6), description: "Game between Louvain-la-Neuve and White Star @Louvain-la-Neuve hockey stadium", title: "Louvain-la-Neuve vs White Star", team_id: first_hockey_team.id )
