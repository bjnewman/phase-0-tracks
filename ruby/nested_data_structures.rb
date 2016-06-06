#Release 2 create a nested data structure with hashes
#and arrays to represent a real-world construct


#All-Star rosters is initial hash both leagues sub-hashes
  nl_baseball = {
  nl_east_teams: {
    nationals: {
      key_players: 
      ['Strasburg', 'Scherzer', 'Murphy', 'Harper'],
          coach: 'Dusty Baker'
                },
      mets: {
          key_players: ['Syndergaard', 'Matz', 'Harvey'],
          coach: 'Terry Collins'
        },
    marlins: {
          key_players: ['Stanton', 'Chen'],
          coach: 'Don Mattingly'
      },
    phillies: {
      key_players: ['Howard', 'Harrison', 'Ruiz'],
      coach: 'Pete Mackanin'
      },
    braves: {
      key_players: ['Aybar', 'Markakis', 'Freeman'],
      coach: 'Fredi Gonzalez' #replace Gonzalez with Brian Snitker
      },
    },
  nl_central_teams: {
    cubs: {
      key_players: ['Fowler', 'Heyward', 'Rizzo', 'Bryant', 'Zobrist', 'Russell', 'Baez', 'Montero', 'Ross', 'La Stella', 'Sczur', 'Arriet', 'Lester', 'Lackey', 'Hammel', 'Hendricks', 'Rondon', 'Warren', 'Cahill', 'Strop'],
      coach: 'Joe Maddon'
                },
    pirates: {
      key_players: ['McCutcheon', 'Cole', 'Marte'],
      coach: 'Clint Hurdle'
        },
    cardinals: {
      key_players: ['Molina', 'Wacha', 'Wainright', 'Leake', 'Garcia', 'Martinez', 'Carpenter', 'Grichuk'],
      coach: 'Mike Matheny'
      },
    brewers: {
      key_players: ['Braun', 'Lucroy', 'Carter'],
      coach: 'Craig Counsell'
      },
    reds: {
      key_players: ['Phillips', 'Votto', 'Bruce'],
      coach: 'Bryan Price'
      },
    },
  nl_west_teams: {
    giants: {
      key_players: ['Strasburg', 'Scherzer', 'Murphy', 'Harper'],
      coach: 'Bruce Bochy'
                },
    dodgers: {
      key_players: ['Kershaw', 'Kazmir', 'Puig', "Pederson"],
      coach: 'Dave Roberts'
        },
    rockies: {
      key_players: ['Arenado', 'Story', 'Gonzalez'], #change to C. Gonzalez
      coach: 'Walt Weiss'
      },
    dbacks: {
      key_players: ['Goldschmidt', 'Bourn', 'Grienke'],
      coach: 'Chip Hale'
      },
    padres: {
      key_players: ['Syndergaard', 'Matz', 'Harvey'],
      coach: 'Andy Green'
      },
    },  

    }

#should return Braves' coach
nl_baseball[:nl_east_teams][:braves][:coach]

#update Braves' coach to Brian Snitker
nl_baseball[:nl_east_teams][:braves][:coach] = 'Brian Snitker'
#debug
p nl_baseball[:nl_east_teams][:braves][:coach]

#should return Gonzalez
p nl_baseball[:nl_west_teams][:rockies][:key_players][2]

#change Gonzalez to C. Gonzalez
nl_baseball[:nl_west_teams][:rockies][:key_players][2] = 'C. Gonzalez'

