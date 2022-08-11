//
//  FavouritesList.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import SwiftUI

struct FavouritesList: View {
    private var dataManager = DataManager()
    
    init() {
        UINavigationBar.appearance().largeTitleTextAttributes = [.font : UIFont(name: "Lobster-Regular", size: 40)!]
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Lobster-Regular", size: 20)!]
    }
    
    var body: some View {
        NavigationView {
            List(dataManager.data) { favourite in
                NavigationLink {
                    DetailView(favouriteItem: favourite)
                } label: {
                    FavouritesRow(imageName: favourite.imageName,
                                  text: favourite.name)
                    .font(.custom("Lobster",
                                  size: 20))
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
