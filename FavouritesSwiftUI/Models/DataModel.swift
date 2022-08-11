//
//  DataModel.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import Foundation

struct DataModel: Hashable, Identifiable, Decodable {
    let id: Int
    let name: String
    let imageName: String
    private let section: String
    var appSection: FavouritesSection {
        FavouritesSection(rawValue: section) ?? FavouritesSection.actor
    }
    let description: String
}
