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

puts "Creating Vasco"
vasco = Club.create!(name: "Vasco", description: "Always second place", address: "Avenida Roberto Dinamite, 10. Bairro Vasco da Gama Rio de Janeiro - RJ - Brasil CEP 20921-060")
ClubMember.create!(club_id: vasco.id, user_id: bob.id, is_manager: true)
ClubMember.create!(club_id: vasco.id, user_id: stacy.id)
ClubMember.create!(club_id: vasco.id, user_id: kevin.id)

vasco_senior = Team.create!(club_id: vasco.id, name: "Vasco Senior", sport: "football")
TeamMember.create!(team_id: vasco_senior.id, user_id: stacy.id, role: "Coach")
TeamMember.create!(team_id: vasco_senior.id, user_id: bob.id, role: "Player")
TeamMember.create!(team_id: vasco_senior.id, user_id: kevin.id, role: "Player")

sao_januario = Location.create!(name: "Estadio São Januario", description: "Estádio Vasco da Gama, also known as São Januário, owing to its location on a street of the same name, is the home ground of Club de Regatas Vasco da Gama. Its facade is listed by the National Historical and Artistic Heritage.", club_id: vasco.id)
jogo_um = Event.create!(start_time: DateTime.new(2025,2,3,4,5,6), end_time: DateTime.new(2025,2,3,6,5,6), description: "Game between Vasco and Botafogo @São Januario", title: "Vasco vs Botafogo", location_id: sao_januario.id, team_id: vasco_senior.id )

puts "Creating Botafogo"
botafogo = Club.create!(name: "Botafogo", description: "Always blottles it", address: "AV. VENCESLAU BRÁS, 72 - RIO DE JANEIRO; CEP 22290-140")
ClubMember.create!(club_id: botafogo.id, user_id: stacy.id, is_manager: true)
ClubMember.create!(club_id: botafogo.id, user_id: bob.id)
ClubMember.create!(club_id: botafogo.id, user_id: kevin.id)

botafogo_senior = Team.create!(club_id: botafogo.id, name: "Botafogo Senior", sport: "football")
TeamMember.create!(team_id: botafogo_senior.id, user_id: stacy.id, role: "Player")
TeamMember.create!(team_id: botafogo_senior.id, user_id: bob.id, role: "Coach")
TeamMember.create!(team_id: botafogo_senior.id, user_id: kevin.id, role: "Player")

nilton_santos = Location.create!(name: "Nilton Santos", description: "Estádio Olímpico Nilton Santos is a multi-purpose stadium located in the neighbourhood of Engenho de Dentro in Rio de Janeiro, Brazil. It is used mostly for football matches and athletics and is the home stadium of the football club Botafogo. The stadium was built by a consortium under the leadership of Odebrecht S.A., from 2003 through to 2007, opening in time for the 2007 Pan American Games.[4][5] It hosted the athletics competitions at the 2016 Summer Olympics and the 2016 Summer Paralympics.[6] It was one of the five venues for the 2021 Copa América.", club_id: botafogo.id)
jogo_dois = Event.create!(start_time: DateTime.new(2025,2,3,4,5,6), end_time: DateTime.new(2025,2,3,6,5,6), description: "Game between botafogo and Botafogo @São Januario", title: "botafogo vs Botafogo", team_id: botafogo_senior.id )
