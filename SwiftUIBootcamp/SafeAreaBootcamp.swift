//
//  SafeAreaBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 21/02/25.

///.ignoresSafeArea : It can cover the entire screen, like setting background image or color then cover the entire screen. It can extends the view beyond safearea.

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {
        ZStack{
            /// Backgorund
            Color.white
                .ignoresSafeArea(edges: .all)
            /// Foreground
            VStack {
                Text("Hello World")
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(Color.red)
        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
