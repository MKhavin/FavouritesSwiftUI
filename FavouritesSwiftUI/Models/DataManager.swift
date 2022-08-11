//
//  DataManager.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import Foundation
import UIKit

struct DataManager {
    private(set) var data: [DataModel] = []
    
    init() {
        loadData()
    }
    
    private mutating func loadData() {
        let assetData = NSDataAsset(name: "FavouritesData")?.data
        
        if let unwrappedData = assetData {
            do {
                let decoder = JSONDecoder()
                data = try decoder.decode([DataModel].self, from: unwrappedData)
            } catch {
                fatalError("Error occured when program tryed decode json data.")
            }
        }
    }
}
