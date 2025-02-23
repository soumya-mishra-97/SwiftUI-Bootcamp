//
//  PaddingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by CES on 10/02/25.
//

import SwiftUI

struct PaddingBootcamp: View {
    var body: some View {
        VStack(spacing: 12) {
            Text("Hello, Soumya!").font(.system(size: 26, weight: .semibold))
            Text("Welcome to my channel. Please subscribe and turn on the notification button then you can get our video in first priority.").font(.system(size: 16, weight: .medium))
        }
        .padding(EdgeInsets(top: 30, leading: 20, bottom: 30, trailing: 20))
        .background(
            Color.white
                .cornerRadius(15.0)
                .shadow(color:.black.opacity(0.5),radius: 10,x:0, y:10)
        )
        .padding(.horizontal, 20)
        .background(.blue)
        .padding(.vertical, 20)
        .background(.black)
    }
}

#Preview {
    PaddingBootcamp()
}
