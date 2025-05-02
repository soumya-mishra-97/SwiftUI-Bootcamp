//
//  TransitionBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 04/04/25.
//

import SwiftUI

struct TransitionBootcamp: View {
    
    @State var isBottomSheetShowing: Bool = false
    
    var body: some View {
        ZStack(alignment: .bottom) {
            
            VStack {
                Button(action: {
                    isBottomSheetShowing.toggle()
                }) {
                    Text("Show!!")
                        .frame(width: 100, height: 45)
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(12)
                }
                
                Spacer()
                
                if isBottomSheetShowing {
                    RoundedRectangle(cornerRadius: 20)
                        .frame(height: UIScreen.main.bounds.height * 0.5)
                        //.transition(.move(edge: .bottom))
                        //.transition(.slide)
                        //.transition(AnyTransition.opacity.animation(.easeOut))
                        //.transition(AnyTransition.scale.animation(.easeIn))
                        .transition(AnyTransition.asymmetric(insertion: .move(edge: .bottom), removal: AnyTransition.opacity.animation(.easeOut)))
                        .animation(.easeIn)
                }
            }
            
        }.edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    TransitionBootcamp()
}
