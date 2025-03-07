//
//  TernaryBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 28/02/25.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isRect: Bool = false
    
    var body: some View {
        ZStack{
            /// Background View
            Color.yellow
                .ignoresSafeArea()
            
            /// Shape View
            shapeView
        }
    }
    
    /// Shape View
    var shapeView: some View{
        VStack{
            Button(action: {
                isRect.toggle()
            }, label: {
                Text("RectView: \(isRect.description)")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(8.0)
            }).padding()
            
//            Rectangle()
//                .fill(isRect ? .purple : .mint)
//                .frame(width: isRect ? 300: 100, height: isRect ? 80 : 50)
//                .cornerRadius(isRect ? 12.0 : 4.0)
//                .padding()
            
            /// AnyView: Useful when switching between different views conditionally.
            isRect ?
            AnyView(Rectangle()
                .frame(width: 100, height: 80)
                .cornerRadius(12.0)
                .padding()
            ) :
            AnyView(Circle()
                .frame(width: 50, height: 50)
                .padding()
            )
        }
    }
}

#Preview {
    TernaryBootcamp()
}
