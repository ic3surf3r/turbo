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

# 18 users
puts "Creating users"
maxime = User.create!(email: "maxime@email.com", first_name: "Maxime", last_name: "Neven", password: "123123")
hugo = User.create!(email: "hugo@email.com", first_name: "Hugo", last_name: "Benhaiem", password: "123123")
quentin = User.create!(email: "quentin@email.com", first_name: "Quentin", last_name: "Noel", password: "123123")
arnaud = User.create!(email: "arnaud@email.com", first_name: "Arnaud", last_name: "Dykmans", password: "123123")
edgar = User.create!(email: "edgar@email.com", first_name: "Edgar", last_name: "Reynaud", password: "123123")
loris = User.create!(email: "loris@email.com", first_name: "Loris", last_name: "Grandchamp", password: "123123")
thibault = User.create!(email: "thibault@email.com", first_name: "Thibault", last_name: "Neven", password: "123123")
franki = User.create!(email: "franki@email.com", first_name: "Franki", last_name: "Harte", password: "123123")
rodolphe = User.create!(email: "rodolphe@email.com", first_name: "Rodolphe", last_name: "Willocx", password: "123123")
bobbi = User.create!(email: "bobbi@email.com", first_name: "Bobbi", last_name: "Van Bogaert", password: "123123")
cyril = User.create!(email: "cyril@email.com", first_name: "Cyril", last_name: "Hermans", password: "123123")
corentin = User.create!(email: "corentin@email.com", first_name: "Corentin", last_name: "Desmet", password: "123123")
marco = User.create!(email: "marco@email.com", first_name: "Marco", last_name: "Moretto", password: "123123")
victor = User.create!(email: "victor@email.com", first_name: "Victor", last_name: "Saint-Martin", password: "123123")
harald = User.create!(email: "harald@email.com", first_name: "Harald", last_name: "Marquet", password: "123123")
greg = User.create!(email: "greg@email.com", first_name: "Greg", last_name: "Gucassof", password: "123123")
edouard = User.create!(email: "edouard@email.com", first_name: "Edouard", last_name: "Vandenhaute", password: "123123")
bastien = User.create!(email: "bastien@email.com", first_name: "Bastien", last_name: "Aerts", password: "123123")
lionel = User.create!(email: "lionel@email.com", first_name: "Lionel", last_name: "Sampoux", password: "123123")

#Club White Star
puts "Creating White Star"
white_star = Club.create!(name: "Royal White Star Hockey Club", description: "Hockey club located in Evere", address: "Av. des Anciens Combattants 350, 1140 Evere")
white_star.photo.attach(
  io: File.open('app/assets/images/white_star.gif'),
  filename: 'white_star.gif'
)

#18 Club Members
ClubMember.create!(club_id: white_star.id, user_id: maxime.id)
ClubMember.create!(club_id: white_star.id, user_id: arnaud.id)
ClubMember.create!(club_id: white_star.id, user_id: edgar.id)
ClubMember.create!(club_id: white_star.id, user_id: loris.id)
ClubMember.create!(club_id: white_star.id, user_id: thibault.id)
ClubMember.create!(club_id: white_star.id, user_id: franki.id)
ClubMember.create!(club_id: white_star.id, user_id: rodolphe.id)
ClubMember.create!(club_id: white_star.id, user_id: bobbi.id)
ClubMember.create!(club_id: white_star.id, user_id: cyril.id)
ClubMember.create!(club_id: white_star.id, user_id: corentin.id)
ClubMember.create!(club_id: white_star.id, user_id: marco.id)
ClubMember.create!(club_id: white_star.id, user_id: victor.id)
ClubMember.create!(club_id: white_star.id, user_id: harald.id)
ClubMember.create!(club_id: white_star.id, user_id: greg.id)
ClubMember.create!(club_id: white_star.id, user_id: edouard.id)
ClubMember.create!(club_id: white_star.id, user_id: bastien.id)
ClubMember.create!(club_id: white_star.id, user_id: hugo.id)
ClubMember.create!(club_id: white_star.id, user_id: lionel.id)
ClubMember.create!(club_id: white_star.id, user_id: quentin.id, is_manager: true)

first_team = Team.create!(club_id: white_star.id, name: "Men's first team", sport: "Hockey")
TeamMember.create!(team_id: first_team.id, user_id: stacy.id)
TeamMember.create!(team_id: white_star.id, user_id: maxime.id)
TeamMember.create!(team_id: white_star.id, user_id: arnaud.id)
TeamMember.create!(team_id: white_star.id, user_id: edgar.id)
TeamMember.create!(team_id: white_star.id, user_id: loris.id)
TeamMember.create!(team_id: white_star.id, user_id: thibault.id)
TeamMember.create!(team_id: white_star.id, user_id: franki.id)
TeamMember.create!(team_id: white_star.id, user_id: rodolphe.id)
TeamMember.create!(team_id: white_star.id, user_id: bobbi.id)
TeamMember.create!(team_id: white_star.id, user_id: cyril.id)
TeamMember.create!(team_id: white_star.id, user_id: corentin.id)
TeamMember.create!(team_id: white_star.id, user_id: marco.id)
TeamMember.create!(team_id: white_star.id, user_id: victor.id)
TeamMember.create!(team_id: white_star.id, user_id: harald.id)
TeamMember.create!(team_id: white_star.id, user_id: greg.id)
TeamMember.create!(team_id: white_star.id, user_id: edouard.id)
TeamMember.create!(team_id: white_star.id, user_id: bastien.id)
TeamMember.create!(team_id: white_star.id, user_id: hugo.id, is_coach: true)


senior_team = Team.create!(club_id: white_star.id, name: "Women's first team", sport: "Hockey")
TeamMember.create!(team_id: senior_team.id, user_id: lionel.id, is_coach: true)

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
jogo_um.team.team_members.each{|member| Attendance.create!(event: jogo_um, team_member: member)}

puts "Creating Louvain-la-Neuve"
louvain_la_neuve = Club.create!(name: "Louvain-la-Neuve Club", description: "Club de sport ", address: "Bd Baudouin 1er, 1348 Ottignies-Louvain-la-Neuve")
louvain_la_neuve.photo.attach(
  io: File.open('app/assets/images/leuven_la_neuve.png'),
  filename: 'leuven_la_neuve.png'
)
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
jogo_dois.team.team_members.each{|member| Attendance.create!(event: jogo_dois, team_member: member)}
