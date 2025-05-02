//
//  AnimationBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 03/04/25.
//

import SwiftUI

/// WithAnimation() -> depends on State variable
/// .animation() -> depends on component -> it's deprecated now in IOS 15.0 so go with WithAnimation()
/// Best -> WithAnimation()
struct AnimationBootcamp: View {
    @State var isAnimated: Bool = false
    
    var body: some View {
        ZStack {
            Color.white
                .opacity(0.5)
                .ignoresSafeArea()
            
            /// Animation
            Animation
        }
    }
    
    /// Animation View
    var Animation: some View {
        VStack {
            Button {
                /// Default animation
                withAnimation(.default) {
                    isAnimated.toggle()
                }
                
                /// Default animation with delay
                /*withAnimation(.default.delay(0.5)){
                    isAnimated.toggle()
                }*/
                
                /// Keep animation repeat count is statisfy
                /*withAnimation(.default.repeatCount(5, autoreverses: true)) {
                    isAnimated.toggle()
                }*/
                
                /// Keep animation forever
                /*withAnimation(.default.repeatForever(autoreverses: true)) {
                    isAnimated.toggle()
                }*/
                
            } label: {
               Text("Tap Me!")
                    .frame(width: 100, height: 55)
                    .foregroundStyle(.white)
                    .background(.black)
                    .cornerRadius(12)
            }.shadow(radius: 4.0)
            
            Spacer()
            
            RoundedRectangle(cornerRadius: 50.0)
                .fill(isAnimated ? Color.pink : Color.black)
                .frame(width: isAnimated ? 100 : 200, height: isAnimated ? 100 : 200)
                .rotationEffect(.degrees(isAnimated ? 360 : 0)) /// Spinning effect
                .offset(y: isAnimated ? 250 : 0) /// Top - Bottom animation
                /*.animation(.default)
                .onTapGesture {
                    isAnimated.toggle()
                }*/
            Spacer()
        }
    }
}

#Preview {
    AnimationBootcamp()
}
