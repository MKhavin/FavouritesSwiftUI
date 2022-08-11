import SwiftUI

struct FavouriteImage: ViewModifier {
    func body(content: Content) -> some View {
        content
            .aspectRatio(contentMode: .fit)
            .cornerRadius(10)
    }
}
