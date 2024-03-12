//
//  GameDetailView.swift
//  PokeGames
//
//  Created by Edwin George on 3/4/24.
//

import SwiftUI

struct GameDetailView: View {
    var game: PokemonGame
    var body: some View {
        NavigationStack {
            List {
                Section() {
                    VStack {
                        Text("\(game.title)")
                            .font(.largeTitle)
                        Image("\(game.title)")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 300, height: 300)
                    }
                }
                Section(header: Text("Game Info")) {
                    Text("Legendary Pokemon: \(game.legendary)")
                    Text("Generation: \(game.generation)")
                    Text(verbatim: "Release Year: \(game.year)")
                }
                Section() {
                    NavigationLink(destination: PokemonListView(pokemon: ["bulbasaur", "squirtle", "charmander"])) {
                        Text("Pokemon")
                    }
                }
            }
        }
    }
}

#Preview {
    GameDetailView(game: PokemonGame.sampleData[0])
}
