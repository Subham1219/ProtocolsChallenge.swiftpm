import SwiftUI

//MARK: Stretch #3 - Part I
struct TrapezoidShape: Shape {
    func path(in rect: CGRect) -> Path {
        var path = Path()

        // Draw a trapezoid
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.maxX, y: rect.maxY))
        path.addLine(to: CGPoint(x: rect.width * 0.8, y: rect.minY))
        path.addLine(to: CGPoint(x: rect.width * 0.2, y: rect.minY))
        path.closeSubpath()

        return path
    }
}
