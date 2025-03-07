//
//  BindingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 27/02/25.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var bgColor: Color = Color.black
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            /// Background View
            bgColor.ignoresSafeArea()
            
            /// Content View
            ScreenView(bgColor: $bgColor, title: $title)
        }
    }
}

/// Content View
struct ScreenView: View {
    
   @Binding var bgColor: Color
   @Binding var title: String
    
    var body: some View{
        VStack{
            Text(title.uppercased())
                .font(.headline)
                .foregroundColor(.blue)
                .padding()
            
            Button(action: {
                buttonPressed()
            }, label: {
                Text("Button".uppercased())
                    .font(.subheadline)
                    .padding()
                    .foregroundColor(.white)
                    .background(.red)
                    .cornerRadius(8.0)
            })
        }
    }
    
    func buttonPressed(){
        bgColor = .white
        title = "Onboarding Screen"
    }
}

#Preview {
    BindingBootcamp()
}
