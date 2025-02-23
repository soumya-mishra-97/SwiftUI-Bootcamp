//
//  BackgroundAndOverlayBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 09/02/25.
//

import SwiftUI

struct BackgroundAndOverlayBootcamp: View {
    var body: some View {
//        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//            .background(
//                //.red
//                Circle()
//                    .fill(LinearGradient(gradient: Gradient(colors: [Color.red, Color.blue]), startPoint: .topLeading, endPoint: .bottomTrailing))
//                    .frame(width: 100, height: 100)
//            )
//            .background(
//                Circle()
//                    .fill(.red.opacity(0.5))
//                    .frame(width: 120, height: 120)
//            )
//        Rectangle()
//            .fill(.orange)
//            .frame(width: 100, height: 100)
//            .overlay(
//                Rectangle()
//                    .fill(.white)
//                    .frame(width: 50, height: 50)
//            )
//            .overlay(
//                Circle()
//                    .fill(.green)
//                    .frame(width: 25, height: 25)
//            )
        Image(systemName: "heart.fill")
            .foregroundColor(.white)
            .font(.system(size: 50))
            .background(
                Circle()
                    .fill(LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)), Color(#colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 100, height: 100)
                    .shadow(color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1)).opacity(0.5), radius: 5, x: 1, y: 5)
                    .overlay(
                        Circle()
                            .fill(.blue)
                            .frame(width: 35, height: 35)
                            .overlay(Text("5")
                                .foregroundStyle(.white)
                            )
                             ,alignment: .bottomTrailing)
            )
    }
}

#Preview {
    BackgroundAndOverlayBootcamp()
}
