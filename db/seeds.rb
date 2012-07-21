# Delete any pre-existing rows in the 'teams' table.
Team.destroy_all

data_for_teams = [
  { :city => 'Chicago', :name => 'Cubs', :logo => 'http://mlb.mlb.com/mlb/images/team_logos/logo_chc_79x76.jpg'},
  { :city => 'Chicago', :name => 'White Sox', :logo => 'http://mlb.mlb.com/mlb/images/team_logos/logo_cws_79x76.jpg'},
  { :city => 'Boston', :name => 'Red Sox', :logo => 'http://mlb.mlb.com/mlb/images/team_logos/logo_bos_79x76.jpg'},
  { :city => 'New York', :name => 'Yankees', :logo => 'http://mlb.mlb.com/mlb/images/team_logos/logo_nyy_79x76.jpg'},
  { :city => 'Los Angeles', :name => 'Dodgers', :logo => 'http://mlb.mlb.com/mlb/images/team_logos/logo_lad_79x76.jpg'},
]

data_for_teams.each do |team_data|
  t = Team.new
  t.city = team_data[:city]
  t.name = team_data[:name]
  t.logo = team_data[:logo]
  t.save
  # TIP: The above lines could have been written simply as:
  # Team.create(team_data)
end

puts "There are now #{Team.count} teams."