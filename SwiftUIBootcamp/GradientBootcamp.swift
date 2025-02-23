//
//  GradientBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 04/02/25.
//

import SwiftUI

struct GradientBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 8.0)
            .fill(
//                 Liner Gradient: It fades from one color to another in a straight line.
                LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue, Color.purple, Color.orange, Color(#colorLiteral(red: 0.9020017982, green: 0.2381700873, blue: 0.3283493519, alpha: 1))]), startPoint: .topLeading,
                               endPoint: .bottomTrailing)
//                Radial Gradient: It fades from a center point in a circlular shape.
//                RadialGradient(gradient: Gradient(colors: [Color.red, Color.green]), center: .topLeading, startRadius: 5, endRadius: 400)
//                Angluar Gradient: It changes the color when angle changes
//                AngularGradient.init(gradient: Gradient(colors: [Color.red, Color.purple, Color.orange, Color.blue]), center: .topLeading, angle: .degrees(180))
            )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradientBootcamp()
}
