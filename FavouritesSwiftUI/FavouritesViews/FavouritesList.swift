//
//  FavouritesList.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import SwiftUI

struct FavouritesList: View {
    private var dataManager = DataManager()
    
    var body: some View {
        NavigationView {
            List(dataManager.data) { favourite in
                NavigationLink {
//                    FavouritesRow(imageName: favourite.imageName, text: favourite.name)
                } label: {
                    FavouritesRow(imageName: favourite.imageName, text: favourite.name)
                }
            }
            .navigationTitle("Favourites")
        }
    }
}

struct FavouritesList_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesList()
    }
}
