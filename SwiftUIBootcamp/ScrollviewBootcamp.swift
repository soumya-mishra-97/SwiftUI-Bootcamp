//
//  ScrollviewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 14/02/25.
//

import SwiftUI

struct ScrollviewBootcamp: View {
    var body: some View {
        ScrollView{
            VStack(){
                ForEach(0..<45) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 8.0)
                                    .fill(.black)
                                    .frame(width: 200, height: 100)
                                    .shadow(color: .black.opacity(0.5),radius: 5,x: 0, y: 5)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ScrollviewBootcamp()
}

