# Write your code below game_hash
def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

require 'pry'

def num_points_scored (player)
  data = game_hash
  points = nil
  data.each do |key, val|
  val[:players].each do |stats|
      if player == stats[:player_name]
       points = stats[:points]
      end
     end
    end
  points
end


def shoe_size (player)
  data = game_hash
  shoe = nil
  data.each do |key, val|
  val[:players].each do |stats|
      if player == stats[:player_name]
       shoe = stats[:shoe]
      end
     end
    end
  shoe
end



def team_colors (team)
  data = game_hash
  team_c = nil
  data.each do |key, val|
    if val[:team_name] == team
    team_c = val[:colors]
     end
    end
  team_c
end



def team_names
  data = game_hash
  team_n = []
  data.each do |key, val|
    team_n << val[:team_name]
  end
  team_n
end



def player_numbers(team)
  data = game_hash
  numbers = []
  data.each do |key, val|
    if team == val[:team_name]
      val[:players].each do |stats|
    numbers << stats[:number]
     end 
    end
  end
  numbers
end

def player_stats (player)
  data = game_hash
  p_stats = {}
  data.each do |key,val|
  val[:players].each do |stats|
    if stats[:player_name] == player
      p_stats = stats
      end
     end
    end
    p_stats
  end
  
  
  def big_shoe_rebounds
  data = game_hash
  big = nil
  re = nil
  data.each do |key,val|
  val[:players].each do |stats|
    if big == nil || stats[:shoe] > big
      big = stats[:shoe]
      re = stats[:rebounds]
      end
     end
    end
    re
  end

  
def most_points_scored
data = game_hash
  points = nil
  player = nil
  data.each do |key,val|
  val[:players].each do |stats| 
      if points == nil || stats[:points] > points
      points = stats[:points]
      player = stats[:player_name]
      end
     end
    end
    player
end

puts most_points_scored

def winning_team
  data = game_hash
  h_points = 0
  a_points = 0
  team = nil
  data.each do |key,val|
    val[:players].each do |stats|
      if key == :home
    h_points = stats[:points] + h_points
  else
    a_points = stats[:points] + a_points
    end
    if h_points > a_points
     team = data[:home][:team_name]
     else
       team = data[:away][:team_name]
    end
    end
    end
    team
end 

puts winning_team

def player_with_the_longest_name
data = game_hash
  name_l = nil
  player = nil
  data.each do |key,val|
  val[:players].each do |stats|
      if name_l == nil || stats[:player_name].length > name_l
      name_l = stats[:player_name].length
      player = stats[:player_name]
      end
     end
    end
    player
end

puts player_with_the_longest_name


def player_with_the_longest_name
data = game_hash
  name_l = nil
  player = nil
  data.each do |key,val|
  val[:players].each do |stats|
      if name_l == nil || stats[:player_name].length > name_l
      name_l = stats[:player_name].length
      player = stats[:player_name]
      end
     end
    end
    player
end

puts player_with_the_longest_name



