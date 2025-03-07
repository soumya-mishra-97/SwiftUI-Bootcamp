//
//  ConditionalBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 27/02/25.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var isLoading: Bool = false
    @State var isCircle: Bool = false
    @State var isRect: Bool = false
    
    var body: some View {
        /// Loading View
        loadingView
        
        /// Conditional Logic
        if isLoading{
            ProgressView()
        }
        
        /// Circle View
        circleView
        
        /// Rect View
        rectView
        
        /// Conditional Logic
        if isCircle{
            Circle()
                .frame(width: 50, height: 50)
                .padding()
        }
        
        if isRect{
            Rectangle()
                .frame(width: 50, height: 50)
                .padding()
        }
        
//        if isCircle && isRect {
//            Rectangle()
//                .frame(width: 300, height: 80)
//                .cornerRadius(12.0)
//                .padding()
//        }
        
//        if isCircle || isRect {
//            Rectangle()
//                .frame(width: 300, height: 80)
//                .cornerRadius(12.0)
//                .padding()
//        }
        
        if !isCircle && !isRect {
            Rectangle()
                .frame(width: 300, height: 80)
                .cornerRadius(12.0)
                .padding()
        }
        
        Spacer()
    }
    
    /// Loading View
    var loadingView: some View{
        VStack{
            Button(action: {
                isLoading.toggle()
            }, label: {
                Text("Loading: \(isLoading.description)")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(8.0)
            }).padding()
        }
    }
    
    /// Circle  View
    var circleView: some View{
        VStack{
            Button(action: {
                isCircle.toggle()
            }, label: {
                Text("CircleView: \(isCircle.description)")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(8.0)
            }).padding()
        }
    }
    
    /// Rectangle View
    var rectView: some View{
        VStack{
            Button(action: {
                isRect.toggle()
            }, label: {
                Text("RectView: \(isRect.description)")
                    .font(.headline)
                    .foregroundColor(.white)
                    .padding()
                    .background(.black)
                    .cornerRadius(8.0)
            }).padding()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
