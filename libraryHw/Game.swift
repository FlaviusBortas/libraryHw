//
//  Game.swift
//  libraryHw
//
//  Created by Flavius Bortas on 9/4/18.
//  Copyright © 2018 Flavius Bortas. All rights reserved.
//

import Foundation

struct Game {
    var name: String
    var studio: String

}

extension Game {
    static let allGames = [Game(name: "Halo", studio: "Bungie"),
                           Game(name: "God of War", studio: "Santa Monica"),
                           Game(name: "GTA", studio: "RockStarGames"),
                           Game(name: "UFC", studio: "EA Studios")]
}
