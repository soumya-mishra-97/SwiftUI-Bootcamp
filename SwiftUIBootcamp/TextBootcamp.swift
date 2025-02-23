//
//  TextBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 04/02/25.
//
//  Text Component in Swift UI



import SwiftUI

struct TextBootcamp: View {
    var body: some View {
        Text("Hello, Soumya. Please subscripe our channel and enable the notifications button. Thanks".capitalized)
        //.font(.body)
        //.fontWeight(.semibold)
        //.bold()
        //.underline(color: Color.red)
        //.italic()
        //.strikethrough(color: Color.green)
        .font(.system(size: 16, weight: .medium, design: .rounded))
        .baselineOffset(2.0)
        //.kerning(/*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
        .multilineTextAlignment(.center)
        .foregroundColor(.blue)
        .frame(width: 200.0, height: 100, alignment: .center)
        .minimumScaleFactor(0.1)
    }
}

#Preview {
    TextBootcamp()
}
