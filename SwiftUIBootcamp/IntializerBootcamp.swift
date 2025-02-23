//
//  IntializerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 12/02/25.
//

import SwiftUI

struct IntializerBootcamp: View {
    var title: String
    var backgroundColor: Color
    var count: Int
    
    init(title: Fruit) {
        if title == .apple{
            self.title = "Apples"
            self.backgroundColor = .red
            self.count = 25
        }else if title == .orange{
            self.title = "Oranges"
            self.backgroundColor = .orange
            self.count = 50
        }else{
            self.title = "Grapes"
            self.backgroundColor = .purple
            self.count = 75
        }
    }
    
    enum Fruit{
        case apple
        case orange
        case grape
    }
    
    var body: some View {
        VStack(spacing:8){
            Text("\(count)")
                .font(.system(size: 26))
                .foregroundStyle(.white)
                .underline()
            Text(title)
                .font(.system(size: 20))
                .foregroundColor(.white)
        }
        .frame(width: 100, height: 100)
        .background(backgroundColor)
        .cornerRadius(16)
    }
}

#Preview {
    HStack(spacing: 8) {
        IntializerBootcamp(title: .apple)
        IntializerBootcamp(title: .orange)
        IntializerBootcamp(title: .grape)
    }
}
