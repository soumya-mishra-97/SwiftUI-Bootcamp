//
//  StackBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 10/02/25.
//

// Stack: HStack, VStack, ZStack
// HStack -> Row
// VStack -> Column
// ZStack -> Back to Front (LIFO) -> StackView

import SwiftUI

struct StackBootcamp: View {
    var body: some View {
//        VStack(spacing: 0, content:{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 125, height: 125)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//        })
//        HStack(spacing: 0, content:{
//            Rectangle()
//                .fill(.red)
//                .frame(width: 150, height: 150)
//            Rectangle()
//                .fill(.blue)
//                .frame(width: 125, height: 125)
//            Rectangle()
//                .fill(.green)
//                .frame(width: 100, height: 100)
//        })
        
//        ZStack(
//            content: {
//                Rectangle()
//                    .fill(.yellow)
//                VStack(alignment: .center){
//                    Rectangle()
//                        .fill(.orange)
//                        .frame(width: 150, height: 150)
//                    Rectangle()
//                        .fill(.white)
//                        .frame(width: 125, height: 125)
//                    Rectangle()
//                        .fill(.green)
//                        .frame(width: 100, height: 100)
//                    HStack(alignment: .center){
//                        Rectangle()
//                            .fill(.blue)
//                            .frame(width: 60, height: 60)
//                        Rectangle()
//                            .fill(.purple)
//                            .frame(width: 60, height: 60)
//                    }.background(.white)
//                    HStack(){
//                        Rectangle()
//                            .fill(.red)
//                            .frame(width: 50, height: 50)
//                        Rectangle()
//                            .fill(.brown)
//                            .frame(width: 50, height: 50)
//                    }.background(.white)
//                }.background(.black)
//            })
        
        VStack(alignment: .center, spacing: 8){
            Text("Hi, Soumya".uppercased()).font(.title).fontWeight(.semibold)
            Text("Are you available?".capitalized)
        }
        
//        HStack(spacing: 8){
//            Text("DOB:").font(.system(size: 16)).fontWeight(.bold)
//            Text("11th Dec,1997").font(.system(size: 16)).fontWeight(.medium)
//        }
    }
}

#Preview {
    StackBootcamp()
}
