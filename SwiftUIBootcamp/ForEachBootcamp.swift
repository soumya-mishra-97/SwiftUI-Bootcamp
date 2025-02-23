//
//  ForEachBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 12/02/25.
//

import SwiftUI

struct ForEachBootcamp: View {
    var body: some View {
        VStack(){
            ForEach(1..<11) { index in
                HStack(){
                    Circle()
                        .frame(width: 10, height: 10)
                        .foregroundColor(.white)
                        .background(.white)
                        .cornerRadius(5.0)
                    Text("Roll no. \(index)")
                        .foregroundColor(.white)
                        .underline()
                }
            }
        }
        .padding(.all,12)
        .background(.black)
        .cornerRadius(12.0)
    }
}

#Preview {
    ForEachBootcamp()
}
