//
//  PokemonListView.swift
//  PokeGames
//
//  Created by Edwin George on 3/7/24.
//

import SwiftUI

struct PokemonListView: View {
    var pokemon: [String]
    
    var body: some View {
        List {
            ForEach(pokemon, id: \.self) {mon in
                Text(mon)
            }
        }
    }
}

#Preview {
    PokemonListView(pokemon: ["bulbasaur", "squirtle", "charmander"])
}
