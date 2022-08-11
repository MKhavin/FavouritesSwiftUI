//
//  FavouritesRow.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import SwiftUI

struct FavouritesRow: View {
    var imageName: String
    var text: String
    
    var body: some View {
        HStack {
            Image(imageName)
                .resizable()
                .frame(width: 100, height: 100)
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
            
            Text(text)
                .padding()
                .frame(alignment: .leading)
            
            Spacer()
        }
    }
}

struct FavouritesRow_Previews: PreviewProvider {
    static var previews: some View {
        FavouritesRow(imageName: "Link", text: "Link")
    }
}
