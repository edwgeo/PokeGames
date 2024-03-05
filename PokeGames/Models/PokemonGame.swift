//
//  PokemonGame.swift
//  PokeGames
//
//  Created by Edwin George on 2/26/24.
//

import Foundation
struct PokemonGame: Identifiable {
    let id: UUID
    let title: String
    let year: Int
    let legendary: String
    let generation: Int
    
    init(id: UUID = UUID(), title: String, year: Int, legendary: String, generation: Int) {
        self.id = id
        self.title = title
        self.year = year
        self.legendary = legendary
        self.generation = generation
    }
}

extension PokemonGame {
    static let sampleData: [PokemonGame] =
    [
        PokemonGame(title: "Pokemon Red", year: 1996, legendary: "Mew", generation: 1),
        PokemonGame(title: "Pokemon Green", year: 1996, legendary: "Mew", generation: 1),
        PokemonGame(title: "Pokemon Blue", year: 1996, legendary: "Mew", generation: 1)
    ]
}
