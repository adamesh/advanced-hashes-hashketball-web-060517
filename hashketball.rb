require 'pry'
def game_hash
  hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12 ,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 12,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismak Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 7,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Brendan Haywood" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 22,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

def return_player_hash
  game_hash.values[0][:players].merge(game_hash.values[1][:players])
end

def num_points_scored(players_name)
  return_player_hash[players_name][:points]
end

def shoe_size(players_name)
  return_player_hash[players_name][:shoe]
end

def team_colors(team_name)
  game_hash.values.each do |team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end

def team_names
  a = game_hash.values[0][:team_name]
  b = game_hash.values[1][:team_name]
  [a, b]
end

def player_numbers(team_name)
  if game_hash.values[0][:team_name] == team_name
    team_hash = game_hash.values[0][:players]
  else
    team_hash = game_hash.values[1][:players]
  end

  team_hash.map do |player, stats|
    stats[:number]
  end
end

def player_stats(player_name)
  return_player_hash[player_name]
end

def big_shoe_rebounds
  biggest_shoe = 0
  target_player = nil
  return_player_hash.each do |player, stats|
    if stats[:shoe] > biggest_shoe
      biggest_shoe = stats[:shoe]
      target_player = player
    end
  end
  return_player_hash[target_player][:rebounds]
end
