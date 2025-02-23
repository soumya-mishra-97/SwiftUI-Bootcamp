//
//  ButtonBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 21/02/25.
//

import SwiftUI

struct ButtonBootcamp: View {
    @State var title = "#Button Bootcamp"
    var body: some View {
        VStack{
            Text(title.uppercased()).padding()
            
            /// Default Button#1
            Button("Press Me!".uppercased()) {
                self.title = "#Button Press Me"
            }.padding()
            
            /// Custom Button #2
            Button(action: {
                self.title = "#Button Save"
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.red)
                    .padding()
                    .padding(.horizontal,20)
                    .background(
                        Color.black
                            .cornerRadius(8.0)
                            .shadow(radius: 10)
                    )
            }).padding()
            
            /// Custom Button #3
            Button(action: {
                self.title = "#Button Like"
            }, label: {
                Circle()
                    .fill(.white)
                    .frame(width: 50, height: 50)
                    .shadow(radius: 10)
                    .overlay {
                        Image(systemName: "heart.fill")
                            .font(.title)
                            .foregroundColor(Color(#colorLiteral(red: 1, green: 0.3293097019, blue: 1, alpha: 1)))
                    }
            }).padding()
            
            /// Custom Button #4
            Button(action: {
                self.title = "#Button Profile"
            }, label: {
                Text("Profile".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.black)
                    .padding()
                    .padding(.horizontal,10)
                    .background(Capsule().stroke(.gray, lineWidth: 1.0))
            })
        }
    }
}

#Preview {
    ButtonBootcamp()
}
