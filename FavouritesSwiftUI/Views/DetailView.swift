//
//  DetailView.swift
//  FavouritesSwiftUI
//
//  Created by Michael Khavin on 11.08.2022.
//

import SwiftUI

struct DetailView: View {
    let dataModel: DataModel
    
    var body: some View {
            GeometryReader { geometry in
                Image(dataModel.appSection.background)
                    .resizable()
                    .modifier(Background())
                
                VStack {
                    Image(dataModel.imageName)
                        .resizable()
                        .edgesIgnoringSafeArea(.leading)
                        .edgesIgnoringSafeArea(.trailing)
                        .aspectRatio(contentMode: .fit)
                        .frame(height: geometry.size.height * 0.3)
                        .cornerRadius(10)
                    VStack {
                        Text(dataModel.name)
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
                                
                                Text(dataModel.description)
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
        let data = DataManager().data[0]
        DetailView(dataModel: data)
    }
}

struct Background: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fill)
            .edgesIgnoringSafeArea(.all)
            .opacity(0.6)
    }
}
