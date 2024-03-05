//
//  PokeGamesApp.swift
//  PokeGames
//
//  Created by Edwin George on 2/21/24.
//

import SwiftUI

@main
struct PokeGamesApp: App {
    var body: some Scene {
        WindowGroup {
            GameListView(games: PokemonGame.sampleData)
        }
    }
}
