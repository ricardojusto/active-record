require_relative 'setup'

# Get all the players for the first team
# p Team.first.players 

# Get the team with the name "Cavs"
# p Team.find_by(name: "Cavs")

# Get all players with the "PG" position for the team "Cavs"
# p Team.find_by(name: "Cavs").players.where(position: "PG")

# Get the first 2 teams
# p Team.first(2)

# Get all players of the "PG" position in reverse order by the time they were created (Newest to oldest)
# p Player.where(position: "PG").order(:created_at).reverse 


# Get the second and third teams
# p Team.limit(2).offset(1)

# Get the players with ids 3 and 4, using the SQL IN clause
# p Player.where(id: [3,4])

# Count all the players with the "SF" position
# p Player.where(position: "SF").count