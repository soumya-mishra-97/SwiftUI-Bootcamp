//
//  AnimationTimingBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 04/04/25.
//

import SwiftUI

struct AnimationTimingBootcamp: View {
    
    @State private var isAnimating = false
    
    var body: some View {
        ZStack{
            Color.yellow
                .opacity(0.2)
                .ignoresSafeArea()
            
            /// Animation
            AnimationView
        }
    }
    
    /// Animation View
    var AnimationView: some View {
        
        let timing: Double = 10.0
        
        return VStack{
            Button {
                isAnimating.toggle()
            } label: {
                Text("Animation Start")
                    .font(.body)
                    .frame(width: 160, height: 55)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(25)
            }.padding(.bottom, 20)
            
            Text("Spring Animation: Customize the Start & End Animation")
                .font(.system(size: 14))
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black)
                .frame(width: isAnimating ? 300 : 100, height: 100)
                .animation(.spring(
                    response: 0.5,
                    dampingFraction: 0.5,
                    blendDuration: 1.0), value: isAnimating)
            
            Text("Linear Animation: Start & End Animation at Same Time")
                .font(.system(size: 14))
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black)
                .frame(width: isAnimating ? 300 : 100, height: 100)
                .animation(.linear(duration: timing), value: isAnimating)
            Text("EaseIn Animation: Start -> Slow & End -> Fast Animation")
                .font(.system(size: 14))
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black)
                .frame(width: isAnimating ? 300 : 100, height: 100)
                .animation(.easeIn(duration: timing), value: isAnimating)
            Text("EaseInOut Animation: Slow Fast Slow Animation")
                .font(.system(size: 14))
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black)
                .frame(width: isAnimating ? 300 : 100, height: 100)
                .animation(.easeInOut(duration: timing), value: isAnimating)
            Text("EaseOut Animation: Start -> Fast & End -> Slow Animation")
                .font(.system(size: 14))
            RoundedRectangle(cornerRadius: 25)
                .fill(Color.black)
                .frame(width: isAnimating ? 300 : 100, height: 100)
                .animation(.easeOut(duration: timing), value: isAnimating)
        }
    }
}

#Preview {
    AnimationTimingBootcamp()
}
