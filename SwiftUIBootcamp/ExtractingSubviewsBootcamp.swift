//
//  ExtractingSubviewsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 27/02/25.
//

import SwiftUI

struct ExtractingSubviewsBootcamp: View {
    @State var bgColor = Color.black.opacity(0.8)
    var body: some View {
        ZStack{
            bgColor.ignoresSafeArea()
            
            HStack(spacing: 8){
                FruitView(fruit: "Apples", count: 5, bgColor: .red)
                FruitView(fruit: "Oranges", count: 10, bgColor: .orange)
                FruitView(fruit: "Grapes", count: 15, bgColor: .purple)
            }
        }
    }
}

#Preview {
    ExtractingSubviewsBootcamp()
}

struct FruitView: View {
    
    let fruit: String
    let count: Int
    let bgColor: Color
    
    var body: some View {
        VStack{
            Text("\(count)")
                .font(.headline)
                .foregroundColor(.white)
                .padding(.vertical, 4)
            Text("\(fruit)".uppercased())
                .font(.title2)
                .foregroundColor(.white)
        }
        .padding()
        .background(bgColor)
        .cornerRadius(8.0)
    }
}
