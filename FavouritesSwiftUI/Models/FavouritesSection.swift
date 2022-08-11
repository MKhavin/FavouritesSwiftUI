//
//  Section.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import Foundation

enum FavouritesSection: String {
    case gameCharacter = "GameCharacter"
    case actor = "Actor"
    case comixCharacter = "ComixCharacter"
    case footballPlayer = "FootballPlayer"
    case filmCharacter = "FilmCharacter"
    case film = "Film"
    
    var background: String {
        switch self {
        case .gameCharacter:
            return "Gamepad"
        case .actor, .filmCharacter, .film:
            return "Film"
        case .comixCharacter:
            return "Retro"
        case .footballPlayer:
            return "Stadium"
        }
    }
    
    var title: String {
        switch self {
        case .gameCharacter:
            return "Game characters"
        case .actor:
            return "Actors"
        case .comixCharacter:
            return "Comix characters"
        case .footballPlayer:
            return "Football players"
        case .filmCharacter:
            return  "Film characters"
        case .film:
            return "Films"
        }
    }
}
