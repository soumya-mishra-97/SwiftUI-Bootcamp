//
//  StateBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 26/02/25.
//

import SwiftUI

struct StateBootcamp: View {
    
    @State var bgColor: Color = Color.black
    @State var textBgColor: Color = Color.green
    @State var title: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            bgColor
                .ignoresSafeArea(.all)
            VStack{
                Text(title.uppercased())
                    .font(.title)
                    .foregroundColor(textBgColor)
                    .padding(.vertical, 4)
                Text("Count \(count)".uppercased())
                    .font(.headline)
                    .foregroundColor(textBgColor)
                    .underline()
                    .padding(.vertical, 4)
                
                HStack(spacing: 16){
                    Button(action: {
                        bgColor = Color.black
                        title = "First Screen".uppercased()
                        count += 1
                    }, label: {
                        Text("Button1".uppercased())
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(.all, 12)
                            .background(Color.blue
                                .cornerRadius(8.0))
                    })
                    Button(action: {
                        bgColor = Color.white
                        title = "Second Screen".uppercased()
                        count -= 1
                    }, label: {
                        Text("Button2".uppercased())
                            .font(.title3)
                            .foregroundColor(.white)
                            .padding(.all, 12)
                            .background(Color.red
                                .cornerRadius(8.0))
                    })
                }.padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    StateBootcamp()
}
