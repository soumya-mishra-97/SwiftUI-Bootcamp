//
//  GridBootcMP.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 18/02/25.
//

import SwiftUI

struct GridBootcMP: View {
    
    /// LazyVGrid -> Grid layout of Vertical scrolling -> it takes columns as a parameter
    let columns: [GridItem] = [
        ///.fixed : Fixed Szie (height & width)
        //        GridItem(.fixed(50), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(100), spacing: nil, alignment: nil),
        //        GridItem(.fixed(75), spacing: nil, alignment: nil),
        //        GridItem(.fixed(50), spacing: nil, alignment: nil)
        
        ///.flexible : Flexible Size (Expand the column width fit the available space)
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil),
        GridItem(.flexible(), spacing: 5, alignment: nil)
        
        ///.adaptive : Dynamic layout (fit many items in available space and maintaining the minimum width)
        //        GridItem(.adaptive(minimum: 50, maximum: 100), spacing: nil, alignment: nil),
        //        GridItem(.adaptive(minimum: 50, maximum: 100), spacing: nil, alignment: nil),
        //        GridItem(.adaptive(minimum: 50, maximum: 100), spacing: nil, alignment: nil),
    ]
    
    var body: some View {
        ScrollView {
            Rectangle()
                .fill(.orange.opacity(0.8))
                .frame(height: 300)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 5,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: Text("Section-1")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.black)) {
                            ForEach(0..<5) { index in
                                Rectangle().frame(height: 150)
                                    .foregroundColor(.red)
                            }
                        }
                }
            )
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 5,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: Text("Section-2")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.black)) {
                            ForEach(0..<10) { index in
                                Rectangle().frame(height: 150)
                                    .foregroundColor(.blue)
                            }
                        }
                }
            )
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing: 5,
                pinnedViews: [.sectionHeaders],
                content: {
                    Section(header: Text("Section-3")
                        .font(.title)
                        .fontWeight(.medium)
                        .foregroundColor(.black)) {
                            ForEach(0..<15) { index in
                                Rectangle().frame(height: 150)
                                    .foregroundColor(.green)
                            }
                        }
                }
            )
        }.padding()
    }
}

#Preview {
    GridBootcMP()
}
