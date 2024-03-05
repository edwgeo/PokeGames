//
//  GameList.swift
//  PokeGames
//
//  Created by Edwin George on 2/21/24.
//

import SwiftUI

// TODO: Look into LazyVGrid or LazyHGrid for this
struct GameListView: View {
    var games: [PokemonGame]
    var body: some View {
        NavigationStack {
            List(games) { game in
                NavigationLink (destination: GameDetailView(game: game)) {
                    HStack {
                        Image("\(game.title)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                        Text("Title: \(game.title)")
                            .font(.headline)
                    }
                }
            }
        }
    }
}

#Preview {
    GameListView(games: PokemonGame.sampleData)
}
