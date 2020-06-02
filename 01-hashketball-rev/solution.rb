# select enumerates through every values and selects only the
# value it is true for -> select the rule that you put in
# what's the difference between select and each
# returns a array of players from teh away team
def away_players
  game_hash[:away][:players] 
end

# returns a array of players from teh home team
def home_players
  game_hash[:home][:players] 
end

#return the array with all the players
def all_players
  home_players + away_players
end

def find_player(player_name)
  all_players.find do |player|
    player[:player_name] == player_name  
  end
end

def num_points_scored(player_name)
    # 10
    # get to the point key in game hash
    # 3 key value pairs nested within this hash
  # binding.pry
  # game_hash[:away][:players].select do |player|
  #   player[:player_name] == player_name  
  # end  
  # game_hash[:home][:players].select do |player|
  #   player[:player_name] == player_name  
  # end  
  find_player(player_name)[:points]
end

# num_points_scored("Jeff Adrien")

def shoe_size(player_name)
  find_player(player_name)[:shoe]
end

def find_team(team_name)
  # game_hash.find 
  game_hash.find do |game_key, value|
    value[:team_name] == team_name
  end[1]
  # binding.pry
end


def team_colors(team_name)
  find_team(team_name)[:colors]
end
