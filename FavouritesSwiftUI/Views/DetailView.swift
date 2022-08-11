//
//  DetailView.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import SwiftUI

struct DetailView: View {
    let favouriteItem: DataModel
    
    var body: some View {
            GeometryReader { geometry in
                Image(favouriteItem.appSection.background)
                    .resizable()
                    .modifier(Background())
                
                VStack {
                    Image(favouriteItem.imageName)
                        .resizable()
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                        .modifier(FavouriteImage())
                        .frame(height: geometry.size.height * 0.3)
                    
                    VStack {
                        Text(favouriteItem.name)
                            .font(.custom("Lobster-Regular",
                                          size: 36,
                                          relativeTo: .title))
                        ScrollView {
                            VStack {
                                Text("Description: ")
                                    .font(.custom("Lobster",
                                                  size: 26,
                                                  relativeTo: .title2))
                                    .frame(maxWidth: .infinity, alignment: .leading)
                                
                                Divider()
                                
                                Text(favouriteItem.description)
                                    .font(.body)
                                    .frame(maxWidth: .infinity, alignment: .leading)
                            }
                        }
                    }
                    .padding()
                }
            }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(favouriteItem: DataManager().data[0])
    }
}
