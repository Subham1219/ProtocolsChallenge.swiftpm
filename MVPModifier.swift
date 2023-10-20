import SwiftUI

//MARK: MVP - Part I
struct MyCustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.blue) // 
            .padding() //
            .font(.headline)
            .background(Color.gray)
    }
}
