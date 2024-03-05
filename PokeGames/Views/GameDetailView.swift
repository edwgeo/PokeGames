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
        VStack {
            Image("\(game.title)")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 300)
            Text("\(game.title)")
                .font(.largeTitle)
            Text("Legendary Pokemon: \(game.legendary)")
            Text("Generation: \(game.generation)")
            Text(verbatim: "Release Year: \(game.year)")
        }
    }
}

#Preview {
    GameDetailView(game: PokemonGame.sampleData[0])
}
