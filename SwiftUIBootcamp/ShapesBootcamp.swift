//
//  ShapesBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by CES on 04/02/25.
//

import SwiftUI

struct ShapesBootcamp: View {
    var body: some View {
        //Circle()
        //Ellipse()
        //Capsule(style: .circular)
        //Rectangle()
        RoundedRectangle(cornerRadius: 8.0)
        //.fill(.blue)
        //.foregroundColor(.green)
        //.stroke(.blue, lineWidth: 10.0)
        //.stroke(Color.brown, style: StrokeStyle(lineWidth: 30.0, lineCap: .round, dash: [35.0]))
        .frame(width: 300, height: 200)
        //.trim(from: 0.5, to: 1.0)
        
    }
}

#Preview {
    ShapesBootcamp()
}
