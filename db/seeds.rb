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

# 1st user story ; Player at White Star

# Creating manager + coaches
quentin = User.create!(email: "quentin@email.com", first_name: "Quentin", last_name: "Noel", password: "123123")
hugo = User.create!(email: "hugo@email.com", first_name: "Hugo", last_name: "Benhaiem", password: "123123")
lionel = User.create!(email: "lionel@email.com", first_name: "Lionel", last_name: "Sampoux", password: "123123")

# 18 users of men's first
puts "Creating 18 men's first team users"
maxime = User.create!(email: "maxime@email.com", first_name: "Maxime", last_name: "Neven", password: "123123")
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

# 12 users of women's first team
puts "Creating 12 women's team users"
tea = User.create!(email: "tea@email.com", first_name: "Tea", last_name: "Watelet", password: "123123")
celeste = User.create!(email: "celeste@email.com", first_name: "Celeste", last_name: "Berkvens", password: "123123")
estelle = User.create!(email: "estelle@email.com", first_name: "Estelle", last_name: "Bodart", password: "123123")
gabrielle = User.create!(email: "gabrielle@email.com", first_name: "Gabrielle", last_name: "Verrier", password: "123123")
noemie = User.create!(email: "noemie@email.com", first_name: "Noemie", last_name: "De Cocker", password: "123123")
lara = User.create!(email: "lara@email.com", first_name: "Lara", last_name: "Oviedo", password: "123123")
ilaria = User.create!(email: "ilaria@email.com", first_name: "Ilaria", last_name: "Sarnari", password: "123123")
elettra = User.create!(email: "elettra@email.com", first_name: "Elettra", last_name: "Bormida", password: "123123")
perrine = User.create!(email: "perrine@email.com", first_name: "Perrine", last_name: "Motte", password: "123123")
julie = User.create!(email: "julie@email.com", first_name: "Julie", last_name: "Van Laer", password: "123123")
margaux = User.create!(email: "margaux@email.com", first_name: "Margaux", last_name: "Coudron", password: "123123")

#Club White Star
puts "Creating White Star club"
white_star = Club.create!(name: "Royal White Star Hockey Club", description: "Hockey club located in Evere", address: "Av. des Anciens Combattants 350, 1140 Evere")
white_star.photo.attach(
  io: File.open('app/assets/images/white_star.gif'),
  filename: 'white_star.gif'
)
white_star.save!

# 18 Club Members first team
puts "Creating 30 club members"
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
ClubMember.create!(club_id: white_star.id, user_id: quentin.id, is_manager: true)

#12Club Members women's team
ClubMember.create!(club_id: white_star.id, user_id: lionel.id)
ClubMember.create!(club_id: white_star.id, user_id: tea.id)
ClubMember.create!(club_id: white_star.id, user_id: celeste.id)
ClubMember.create!(club_id: white_star.id, user_id: estelle.id)
ClubMember.create!(club_id: white_star.id, user_id: gabrielle.id)
ClubMember.create!(club_id: white_star.id, user_id: ilaria.id)
ClubMember.create!(club_id: white_star.id, user_id: elettra.id)
ClubMember.create!(club_id: white_star.id, user_id: noemie.id)
ClubMember.create!(club_id: white_star.id, user_id: lara.id)
ClubMember.create!(club_id: white_star.id, user_id: perrine.id)
ClubMember.create!(club_id: white_star.id, user_id: margaux.id)
ClubMember.create!(club_id: white_star.id, user_id: julie.id)

# Creating first team
puts "Creating first team"
first_team = Team.create!(club_id: white_star.id, name: "Men's first team", sport: "Hockey", description: "Playing in honour division")

# Creating first team members
puts "Creating team members of first team"
TeamMember.create!(team_id: first_team.id, user_id: maxime.id)
TeamMember.create!(team_id: first_team.id, user_id: arnaud.id)
TeamMember.create!(team_id: first_team.id, user_id: edgar.id)
TeamMember.create!(team_id: first_team.id, user_id: loris.id)
TeamMember.create!(team_id: first_team.id, user_id: thibault.id)
TeamMember.create!(team_id: first_team.id, user_id: franki.id)
TeamMember.create!(team_id: first_team.id, user_id: rodolphe.id)
TeamMember.create!(team_id: first_team.id, user_id: bobbi.id)
TeamMember.create!(team_id: first_team.id, user_id: cyril.id)
TeamMember.create!(team_id: first_team.id, user_id: corentin.id)
TeamMember.create!(team_id: first_team.id, user_id: marco.id)
TeamMember.create!(team_id: first_team.id, user_id: victor.id)
TeamMember.create!(team_id: first_team.id, user_id: harald.id)
TeamMember.create!(team_id: first_team.id, user_id: greg.id)
TeamMember.create!(team_id: first_team.id, user_id: edouard.id)
TeamMember.create!(team_id: first_team.id, user_id: bastien.id)
TeamMember.create!(team_id: first_team.id, user_id: hugo.id, is_coach: true)

# Creating women's team
puts "Creating Women's first team"
women_team = Team.create!(club_id: white_star.id, name: "Women's first team", sport: "Hockey", description: "Playing in national 1 division")

# Creating women's team teammembers
puts "Creating women's team teammembers"
TeamMember.create!(team_id: women_team.id, user_id: lionel.id, is_coach: true)
TeamMember.create!(team_id: women_team.id, user_id: tea.id)
TeamMember.create!(team_id: women_team.id, user_id: celeste.id)
TeamMember.create!(team_id: women_team.id, user_id: estelle.id)
TeamMember.create!(team_id: women_team.id, user_id: gabrielle.id)
TeamMember.create!(team_id: women_team.id, user_id: ilaria.id)
TeamMember.create!(team_id: women_team.id, user_id: elettra.id)
TeamMember.create!(team_id: women_team.id, user_id: noemie.id)
TeamMember.create!(team_id: women_team.id, user_id: lara.id)
TeamMember.create!(team_id: women_team.id, user_id: perrine.id)
TeamMember.create!(team_id: women_team.id, user_id: margaux.id)
TeamMember.create!(team_id: women_team.id, user_id: julie.id)

# Creating locations
puts "Creating locations"
main_field = Location.create!(name: "Main field", description: "Main field where the most important games are played every week", club_id: white_star.id)
second_field = Location.create!(name: "Second field", description: "Field located near the bar", club_id: white_star.id)

# Creating events
# First week 4-10/12/2023
first_trainig_w1 = Event.create!(start_time: DateTime.new(2023, 12, 5, 19, 0, 0), end_time: DateTime.new(2023, 12, 5, 21, 0, 0), description: "Physical + technical training", title: "Tuesday training", location_id: main_field.id, team_id: first_team.id )
first_trainig_w1.team.team_members.each{|member| Attendance.create!(event: first_trainig_w1, team_member: member)}

second_training_w1 = Event.create!(start_time: DateTime.new(2023, 12, 6, 18, 40, 0), end_time: DateTime.new(2023, 12, 5, 21, 0, 0), description: "Video + technical training", title: "Wednesday training", location_id: main_field.id, team_id: first_team.id )
second_training_w1.team.team_members.each{|member| Attendance.create!(event: second_training_w1, team_member: member)}

third_training_w1 = Event.create!(start_time: DateTime.new(2023, 12, 8, 19, 30, 0), end_time: DateTime.new(2023, 12, 8, 21, 0, 0), description: "PC + Little matches", title: "Friday training", location_id: main_field.id, team_id: first_team.id )
third_training_w1.team.team_members.each{|member| Attendance.create!(event: third_training_w1, team_member: member)}

first_match_w1 = Event.create!(start_time: DateTime.new(2023, 12, 10, 15, 0, 0), end_time: DateTime.new(2023, 12, 10, 16, 30, 0), description: "Homegame against first team of championship", title: "Gameday - White Star vs Leopold", location_id: main_field.id, team_id: first_team.id )
first_match_w1.team.team_members.each{|member| Attendance.create!(event: first_match_w1, team_member: member)}

# Second week 11-17/12/2023
first_trainig_w2 = Event.create!(start_time: DateTime.new(2023, 12, 12, 19, 0, 0), end_time: DateTime.new(2023, 12, 5, 21, 0, 0), description: "Physical + technical training", title: "Tuesday training", location_id: main_field.id, team_id: first_team.id )
first_trainig_w2.team.team_members.each{|member| Attendance.create!(event: first_trainig_w2, team_member: member)}

second_training_w2 = Event.create!(start_time: DateTime.new(2023, 12, 13, 18, 40, 0), end_time: DateTime.new(2023, 12, 5, 21, 0, 0), description: "Video + technical training", title: "Wednesday training", location_id: main_field.id, team_id: first_team.id )
second_training_w2.team.team_members.each{|member| Attendance.create!(event: second_training_w2, team_member: member)}

third_training_w2 = Event.create!(start_time: DateTime.new(2023, 12, 15, 19, 30, 0), end_time: DateTime.new(2023, 12, 8, 21, 0, 0), description: "PC + Little matches", title: "Friday training", location_id: main_field.id, team_id: first_team.id )
third_training_w2.team.team_members.each{|member| Attendance.create!(event: third_training_w2, team_member: member)}

first_match_w2 = Event.create!(start_time: DateTime.new(2023, 12, 17, 15, 0, 0), end_time: DateTime.new(2023, 12, 10, 16, 30, 0), description: "Homegame against rivals", title: "Gameday - White Star vs Uccle Sport", location_id: main_field.id, team_id: first_team.id )
first_match_w2.team.team_members.each{|member| Attendance.create!(event: first_match_w2, team_member: member)}

# 2nd user story
# Creating manager + coaches
guix = User.create!(email: "guix@email.com", first_name: "Guix", last_name: "Keep", password: "123123")
louis = User.create!(email: "louis@email.com", first_name: "Louis", last_name: "Eeckhout", password: "123123")
zeryab = User.create!(email: "zeryab@email.com", first_name: "Zeryab", last_name: "Melouani", password: "123123")


# Creating users of LLN U14-B1
puts "Creating 9 U14-B1 users"
léon = User.create!(email: "léon@email.com", first_name: "Léon", last_name: "Begouain", password: "123123")
antoine = User.create!(email: "antoine@email.com", first_name: "Antoine", last_name: "Legrand", password: "123123")
charly = User.create!(email: "charly@email.com", first_name: "Charly", last_name: "Dufoor", password: "123123")
leopold = User.create!(email: "leopold@email.com", first_name: "Leopold", last_name: "De Ranter", password: "123123")
armand = User.create!(email: "armand@email.com", first_name: "Armand", last_name: "Tang", password: "123123")
jolan = User.create!(email: "jolan@email.com", first_name: "Jolan", last_name: "Ervyn", password: "123123")

# Creating users of LLN U16-G1
puts "Creating 9 U16-1 users"
juliette = User.create!(email: "juliette@email.com", first_name: "Juliette", last_name: "Dubois", password: "123123")
caroline = User.create!(email: "caroline@email.com", first_name: "Caroline", last_name: "Dupont", password: "123123")
carla = User.create!(email: "carla@email.com", first_name: "Carla", last_name: "Renard", password: "123123")
chloe = User.create!(email: "chloe@email.com", first_name: "Chloe", last_name: "Bouble", password: "123123")
margot = User.create!(email: "margot@email.com", first_name: "Margot", last_name: "Dekelver", password: "123123")
tifany = User.create!(email: "tifany@email.com", first_name: "Tifany", last_name: "Harrods", password: "123123")
belle = User.create!(email: "belle@email.com", first_name: "Belle", last_name: "Descartes", password: "123123")
joséphine = User.create!(email: "joséphine@email.com", first_name: "Joséphine", last_name: "Evrard", password: "123123")

# Creating users of LLN U19-B1
thomas = User.create!(email: "thomas@email.com", first_name: "Thomas", last_name: "Keteleer", password: "123123")
baltazar = User.create!(email: "baltazar@email.com", first_name: "Baltazar", last_name: "Hubert", password: "123123")
yvan = User.create!(email: "yvan@email.com", first_name: "Yvan", last_name: "Veroug", password: "123123")
fabien = User.create!(email: "fabien@email.com", first_name: "Fabien", last_name: "Koulier", password: "123123")
constantin = User.create!(email: "constantin@email.com", first_name: "Constantin", last_name: "Tulip", password: "123123")
renaud = User.create!(email: "renaud@email.com", first_name: "Renaud", last_name: "Gare", password: "123123")
roland = User.create!(email: "roland@email.com", first_name: "Roland", last_name: "Berger", password: "123123")
slimane = User.create!(email: "slimane@email.com", first_name: "Slimane", last_name: "Chanteur", password: "123123")

# Creating LLN club
puts "Creating Louvain-la_neuve"
louvain_la_neuve = Club.create!(name: "Louvain-la-Neuve Hockey Club", description: "Hockey club located in LLN", address: "Bd Baudouin 1er, 1348 Ottignies-Louvain-la-Neuve")
louvain_la_neuve.photo.attach(
  io: File.open('app/assets/images/leuven_la_neuve.png'),
  filename: 'leuven_la_neuve.png'
)
louvain_la_neuve.save!

# Creating managers + coaches club members
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: louis.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: guix.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: zeryab.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: maxime.id, is_manager: true)

# Creating U14-B1 ClubMembers
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: antoine.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: charly.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: leopold.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: armand.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: jolan.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: léon.id)

# Creating U16-G1 ClubMembers
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: juliette.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: caroline.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: carla.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: chloe.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: margot.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: tifany.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: belle.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: joséphine.id)

# Creating U19-B1 ClubMembers
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: thomas.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: baltazar.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: yvan.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: fabien.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: constantin.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: renaud.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: roland.id)
ClubMember.create!(club_id: louvain_la_neuve.id, user_id: slimane.id)

# Creating U14-B1 Team
puts "Creating U14-B1 team"
u14_b1 = Team.create!(club_id: louvain_la_neuve.id, name: "U14-B1", sport: "Hockey", description: "Playing in national 1")

# Creating U14-B1 TeamMembers
TeamMember.create!(team_id: u14_b1.id, user_id: louis.id, is_coach: true)
TeamMember.create!(team_id: u14_b1.id, user_id: antoine.id)
TeamMember.create!(team_id: u14_b1.id, user_id: charly.id)
TeamMember.create!(team_id: u14_b1.id, user_id: leopold.id)
TeamMember.create!(team_id: u14_b1.id, user_id: armand.id)
TeamMember.create!(team_id: u14_b1.id, user_id: léon.id)
TeamMember.create!(team_id: u14_b1.id, user_id: jolan.id)

# Creating U16-G1 Team
puts "Creating U16-G1 team"
u16_g1 = Team.create!(club_id: louvain_la_neuve.id, name: "U16-G1", sport: "Hockey", description: "Playing in LFH-1")

# Creating U16-G1 TeamMembers
TeamMember.create!(team_id: u16_g1.id, user_id: zeryab.id, is_coach: true)
TeamMember.create!(team_id: u16_g1.id, user_id: juliette.id)
TeamMember.create!(team_id: u16_g1.id, user_id: caroline.id)
TeamMember.create!(team_id: u16_g1.id, user_id: carla.id)
TeamMember.create!(team_id: u16_g1.id, user_id: chloe.id)
TeamMember.create!(team_id: u16_g1.id, user_id: margot.id)
TeamMember.create!(team_id: u16_g1.id, user_id: tifany.id)
TeamMember.create!(team_id: u16_g1.id, user_id: belle.id)
TeamMember.create!(team_id: u16_g1.id, user_id: joséphine.id)

# Creating U19-B1 Team
puts "Creating U19-B1 team"
u19_b1 = Team.create!(club_id: louvain_la_neuve.id, name: "U19-B1", sport: "Hockey", description: "Playing in national 2")

# Creating U19-B1 TeamMembers
TeamMember.create!(team_id: u19_b1.id, user_id: guix.id, is_coach: true)
TeamMember.create!(team_id: u19_b1.id, user_id: thomas.id)
TeamMember.create!(team_id: u19_b1.id, user_id: baltazar.id)
TeamMember.create!(team_id: u19_b1.id, user_id: yvan.id)
TeamMember.create!(team_id: u19_b1.id, user_id: fabien.id)
TeamMember.create!(team_id: u19_b1.id, user_id: constantin.id)
TeamMember.create!(team_id: u19_b1.id, user_id: renaud.id)
TeamMember.create!(team_id: u19_b1.id, user_id: roland.id)
TeamMember.create!(team_id: u19_b1.id, user_id: slimane.id)

# Creating locations
puts "Creating locations"
main_field_lln = Location.create!(name: "First field", description: "Main field on the left of the clubhouse", club_id: louvain_la_neuve.id)
second_field_lln = Location.create!(name: "Dry field", description: "Field located near the bar", club_id: louvain_la_neuve.id)

# Creating events for 2 weeks (U14-B1)
# First week 4-10/12
puts "Creating events for first week 4-10/12(U14-B1)"
first_training_u14_b1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 4, 16, 30, 0), end_time: DateTime.new(2023, 12, 4, 18, 0, 0), description: "Physical + technical training", title: "Monday training", location_id: main_field_lln.id, team_id: u14_b1.id )
first_training_u14_b1_w1.team.team_members.each{|member| Attendance.create!(event: first_training_u14_b1_w1, team_member: member)}

second_training_u14_b1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 6, 16, 30, 0), end_time: DateTime.new(2023, 12, 6, 18, 0, 0), description: "Technical training", title: "Wednesday training", location_id: main_field_lln.id, team_id: u14_b1.id )
second_training_u14_b1_w1.team.team_members.each{|member| Attendance.create!(event: second_training_u14_b1_w1, team_member: member)}

first_match_u14_b1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 9, 10, 30, 0), end_time: DateTime.new(2023, 12, 9, 10, 30, 0), description: "Homegame against last of division", title: "Gameday - LLN vs Daring", location_id: main_field_lln.id, team_id: u14_b1.id )
first_match_u14_b1_w1.team.team_members.each{|member| Attendance.create!(event: first_match_u14_b1_w1, team_member: member)}

#Second week 11-17/12
puts "Creating events for second week 4-10/12(U14-B1)"
first_training_u14_b1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 11, 16, 30, 0), end_time: DateTime.new(2023, 12, 11, 18, 0, 0), description: "Physical + technical training", title: "Monday training", location_id: main_field_lln.id, team_id: u14_b1.id )
first_training_u14_b1_w2.team.team_members.each{|member| Attendance.create!(event: first_training_u14_b1_w2, team_member: member)}

second_training_u14_b1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 13, 16, 30, 0), end_time: DateTime.new(2023, 12, 13, 18, 0, 0), description: "Technical + tactical training", title: "Wednesday training", location_id: main_field_lln.id, team_id: u14_b1.id )
second_training_u14_b1_w2.team.team_members.each{|member| Attendance.create!(event: second_training_u14_b1_w2, team_member: member)}

first_match_u14_b1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 16, 10, 30, 0), end_time: DateTime.new(2023, 12, 16, 10, 30, 0), description: "Homegame against rivals of wallonia", title: "Gameday - LLN vs Wat Ducks", location_id: main_field_lln.id, team_id: u14_b1.id )
first_match_u14_b1_w2.team.team_members.each{|member| Attendance.create!(event: first_match_u14_b1_w2, team_member: member)}

# Creating events for 2 weeks (U16-G1)
# First week 4-10/12
puts "Creating events for first week 4-10/12(U16-G1)"
first_training_u16_g1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 5, 16, 30, 0), end_time: DateTime.new(2023, 12, 5, 18, 0, 0), description: "Physical + technical training", title: "Tuesday training", location_id: second_field_lln.id, team_id: u16_g1.id )
first_training_u16_g1_w1.team.team_members.each{|member| Attendance.create!(event: first_training_u16_g1_w1, team_member: member)}

second_training_u16_g1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 6, 18, 30, 0), end_time: DateTime.new(2023, 12, 6, 21, 0, 0), description: "Technical training (instensive)", title: "Wednesday training", location_id: main_field_lln.id, team_id: u16_g1.id )
second_training_u16_g1_w1.team.team_members.each{|member| Attendance.create!(event: second_training_u16_g1_w1, team_member: member)}

first_match_u16_g1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 9, 12, 30, 0), end_time: DateTime.new(2023, 12, 9, 13, 30, 0), description: "Homegame against ennemies", title: "Gameday - LLN vs Oree", location_id: main_field_lln.id, team_id: u16_g1.id )
first_match_u16_g1_w1.team.team_members.each{|member| Attendance.create!(event: first_match_u16_g1_w1, team_member: member)}

#Second week 11-17/12
puts "Creating events for second week 4-10/12(U16-G1)"
first_training_u16_g1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 11, 16, 30, 0), end_time: DateTime.new(2023, 12, 11, 18, 0, 0), description: "Physical + technical training", title: "Monday training", location_id: second_field_lln.id, team_id: u16_g1.id )
first_training_u16_g1_w2.team.team_members.each{|member| Attendance.create!(event: first_training_u16_g1_w2, team_member: member)}

second_training_u16_g1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 13, 18, 30, 0), end_time: DateTime.new(2023, 12, 13, 21, 0, 0), description: "Technical + tactical training", title: "Tuesday training", location_id: main_field_lln.id, team_id: u16_g1.id )
second_training_u16_g1_w2.team.team_members.each{|member| Attendance.create!(event: second_training_u16_g1_w2, team_member: member)}

first_match_u16_g1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 16, 12, 30, 0), end_time: DateTime.new(2023, 12, 16, 13, 30, 0), description: "Homegame with club festivities", title: "Gameday - LLN vs Herakles", location_id: main_field_lln.id, team_id: u16_g1.id )
first_match_u16_g1_w2.team.team_members.each{|member| Attendance.create!(event: first_match_u16_g1_w2, team_member: member)}

# Creating events for 2 weeks (U19-B1)
# First week 4-10/12
puts "Creating events for first week 4-10/12(U19-B1)"
first_training_u19_b1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 5, 20, 30, 0), end_time: DateTime.new(2023, 12, 5, 22, 0, 0), description: "Physical + technical training", title: "Tuesday training", location_id: main_field_lln.id, team_id: u19_b1.id )
first_training_u19_b1_w1.team.team_members.each{|member| Attendance.create!(event: first_training_u19_b1_w1, team_member: member)}

second_training_u19_b1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 6, 21, 15, 0), end_time: DateTime.new(2023, 12, 6, 22, 15, 0), description: "Technical training + tests", title: "Wednesday training", location_id: main_field_lln.id, team_id: u19_b1.id )
second_training_u19_b1_w1.team.team_members.each{|member| Attendance.create!(event: second_training_u19_b1_w1, team_member: member)}

first_match_u19_b1_w1 = Event.create!(start_time: DateTime.new(2023, 12, 9, 14, 30, 0), end_time: DateTime.new(2023, 12, 9, 15, 30, 0), description: "Homegame for 6 points !", title: "Gameday - LLN vs Dragons", location_id: main_field_lln.id, team_id: u19_b1.id )
first_match_u19_b1_w1.team.team_members.each{|member| Attendance.create!(event: first_match_u19_b1_w1, team_member: member)}

#Second week 11-17/12
puts "Creating events for second week 4-10/12(U19-B1)"
first_training_u19_b1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 11, 20, 30, 0), end_time: DateTime.new(2023, 12, 11, 22, 0, 0), description: "Physical + technical training", title: "Monday training", location_id: main_field_lln.id, team_id: u19_b1.id )
first_training_u19_b1_w2.team.team_members.each{|member| Attendance.create!(event: first_training_u19_b1_w2, team_member: member)}

second_training_u19_b1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 13, 21, 15, 0), end_time: DateTime.new(2023, 12, 13, 22, 15, 0), description: "Technical + tactical training", title: "Tuesday training", location_id: main_field_lln.id, team_id: u19_b1.id )
second_training_u19_b1_w2.team.team_members.each{|member| Attendance.create!(event: second_training_u19_b1_w2, team_member: member)}

first_match_u19_b1_w2 = Event.create!(start_time: DateTime.new(2023, 12, 19, 14, 30, 0), end_time: DateTime.new(2023, 12, 19, 15, 30, 0), description: "Homegame against rivals of wallonia", title: "Gameday - LLN vs Wavre", location_id: main_field_lln.id, team_id: u19_b1.id )
first_match_u19_b1_w2.team.team_members.each{|member| Attendance.create!(event: first_match_u19_b1_w2, team_member: member)}
