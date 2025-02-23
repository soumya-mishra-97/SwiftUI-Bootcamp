//
//  SpacerBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 11/02/25.
//

import SwiftUI

struct SpacerBootcamp: View {
    var body: some View {
//        HStack{
//            Spacer(minLength: 0)
//                .frame(height: 10)
//                .background(.black)
//            Rectangle()
//                .fill(.orange)
//                .frame(width: 70, height: 70)
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 70, height: 70)
//            Spacer()
//                .frame(height: 10)
//                .background(.black)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 70, height: 70)
//            Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
//                .frame(height: 10)
//                .background(.black)
//        }
//        .padding(.horizontal, 100)
//        .background(.yellow)
        
        VStack {
            HStack{
                Image(systemName: "xmark")
                Spacer()
                    .frame(height: 10)
                    .background(.orange)
                Image(systemName: "gear")
            }
            .font(.title)
            //.background(.green)
            .padding(.horizontal, 20)
            //.background(.black)
            Spacer()
                .frame(width: 10)
                .background(.orange)
        }
        //.background(.white)
    }
}

#Preview {
    SpacerBootcamp()
}
