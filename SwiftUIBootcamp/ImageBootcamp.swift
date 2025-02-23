//
//  ImageBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 06/02/25.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("img1")
        //.renderingMode(/*@START_MENU_TOKEN@*/.template/*@END_MENU_TOKEN@*/)
        //.aspectRatio(contentMode: .fill)
        //.scaledToFit()
            .frame(width: 300.0, height: 300)
        //.opacity(0.8)
        //.cornerRadius(50.0)
        //.foregroundColor(.black)
            .clipShape(
                //Circle()
                RoundedRectangle(cornerRadius: 40)
            )
    }
}

#Preview {
    ImageBootcamp()
}
