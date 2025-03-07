//
//  ExtractingFunctionsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 27/02/25.
//

import SwiftUI

struct ExtractingFunctionsBootcamp: View {
    
    @State var bgColor: Color = .yellow
    
    var body: some View {
        ZStack{
            /// Background
            bgColor
                .ignoresSafeArea()
            
            /// Content View
            contentLayer
        }
    }
    
    /// Content View
    var contentLayer: some View {
        VStack{
            Text("Title".uppercased())
                .font(.title)
                .padding(.vertical, 15)
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Button".uppercased())
                    .font(.title3)
                    .foregroundColor(.white)
                    .padding(.all, 12)
                    .background(Color.black
                        .cornerRadius(8.0))
            })
        }
    }
    
    func buttonPressed(){
        bgColor = .pink
    }
}

#Preview {
    ExtractingFunctionsBootcamp()
}
