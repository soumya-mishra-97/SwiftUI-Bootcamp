//
//  FrameBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 09/02/25.
//

import SwiftUI

struct FrameBootcamp: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .background(.white)
            .frame(width: 100, height: 100)
            .frame(width: 200, height: 200)
            .background(.green)
            .frame(width: 300, height: 300)
            .background(.orange)
            .frame(maxWidth: .infinity)
            .background(.blue)
            .frame(maxHeight: .infinity, alignment: .topLeading)
            .background(.brown)
    }
}

#Preview {
    FrameBootcamp()
}
