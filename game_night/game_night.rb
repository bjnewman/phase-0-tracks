#overall goal create standings for board game night
require 'sqlite3'

#driver code to initialize db
db = SQLite3::Database.new("2016game_night.db")

#create league table (standings_2016) with id primary key, name, defending champ status, games played
#Catan Wins, Catan Points, Terra Mystica Wins, Terra Mystica points, 7th Wonder wins, 7th Wonder points, 

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS standings_2016(
    id INTEGER PRIMARY KEY,
    player_name VARCHAR(255),
    def_champ BOOLEAN,
    catan_wins INT,
    catan_points INT,
    terra_myst_wins INT,
    terra_myst_points INT,
    svth_wond_wins INT,
    svth_wond_points INT,
    overall_wins INT,
    overall_points INT
  )
SQL
#var to store column names for easy SQL commands
full_columns = 'player_name, def_champ, catan_wins, catan_points, terra_myst_wins, terra_myst_points, svth_wond_wins, svth_wond_points, overall_wins, overall_points'
db.execute(create_table_cmd)

#create UI for user to view standings
puts "WELCOME TO YOUR GAME NIGHT STANDINGS APPLICATION - SO WE CAN REALLY KEEP TRACK OF 
WHO IS THE BEST AND WHO IS NOT, LIKE, THE BEST"

#print data from standings_2016 table
simple_view = db.execute("SELECT * FROM standings_2016")
p simple_view
puts "Here are the current standings:
------------------------
Name - Champ - Catan Ws - Catan Pts - Terra Ws - Terra Pts - 7th Ws - 7th Pts/n
#{simple_view}"
#display 
puts "How can we assist you today: 
Please enter the number of the option you would like to select:
1- View standings
2- Edit standings (for corrections mostly)
3- Enter match result
4- View player stats
5- Add new player
6- View season summary
7- Exit"
# option = gets.chomp.to_i
# while option != 7
#   case option
#   when 1
#     full_table_print(db)
#   when 2


# #edit standings
#   #choose which player's stats to edit
#   puts "Whose stats need updating?"
#   updating_player = gets.chomp
#   #choose which stat to update
#   puts "Which stat needs fixing?"
#   updating_stat = gets.chomp
#   #enter new value
#   puts "What's the new value for #{updating_stat}?"
#   if updating_stat == name
#       updated_value = gets.chomp
#   elsif updating_stat == def_champ
#     updated_value = gets.chomp.to_bool
#   else 
#     updated value = gets.chomp
#   end
#   db.execute("UPDATE standings_2016 SET #{updating_stat} = #{updated_value} WHERE name= #{updating_player}")



#Overall wins, overall points (build as sum of other wins and points columns)

#enter match result
# => who played
# => which game
# => get results (1st,2nd,3rd)
#Overall wins, overall points (build as sum of other wins and points columns)

#add new player
  #name
  # puts "What is the new player's name?"
  # pname=gets.chomp
  # db.execute("INSERT INTO standings_2016 (player_name, def_champ, catan_wins, catan_points, terra_myst_wins, terra_myst_points, svth_wond_wins, svth_wond_points, overall_wins, overall_points) VALUES (?,?,?,?,?,?,?,?,?,?)", [pname, 'false', 0, 0, 0, 0, 0, 0, 0, 0])
  # #any points to enter
  # puts "Does #{pname} have any points to enter(y/n)"
  # #if yes which game
  # prev_bool=gets.chomp
  # if prev_bool == y
  #   puts "Which game are you adding points to?"
  #   prev_game=gets.chomp
  #   puts "And how many points should #{pname} have?"
  #   prev_points=gets.chomp.to_i
  #   #onhold
  # else
  # end    
  # #more points?

#view player stats
  #display overall standing, standing in each game, win % overall and each game and sortable, 




