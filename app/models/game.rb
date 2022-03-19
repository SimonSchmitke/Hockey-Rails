class Game
    def self.find_winner_for_game(game:)
        game.teams["away"]["score"] > game.teams["home"]["score"] ? "away" : "home"
    end

    def self.find_winner_for_games(games:)
        outcome = {
            home: 0,
            away: 0
        }
        games.each do | game | 
            winner = find_winner_for_game(game: game)
            winner == "home" ? outcome[:home]+=1 : outcome[:away]+=1
        end

        outcome
        
    end   

end