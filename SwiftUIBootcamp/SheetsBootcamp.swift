//
//  SheetsBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 05/04/25.
//

import SwiftUI

struct SheetsBootcamp: View {
    
    @State var showSheet = false
    
    var body: some View {
        ZStack{
            Color.yellow.opacity(0.2)
                .ignoresSafeArea(.all)
            
            Button {
                showSheet.toggle()
            } label: {
                Text("Show!!")
                    .frame(width: 100, height: 45)
                    .background(Color.black)
                    .foregroundColor(.white)
                    .cornerRadius(12)
            }
            
            /// Full Screen View
            .fullScreenCover(isPresented: $showSheet) {
                SecondView()
            }
            
            /// Sheet
            /*.sheet(isPresented: $showSheet) {
                SecondView()
            }*/
        }
    }
}

/// Second View
struct SecondView: View {
    
    /// Dismiss the presentation view
    @Environment(\.presentationMode) var mode

    var body: some View {
        ZStack(alignment: .topLeading){
            Color.pink.opacity(0.2)
                .ignoresSafeArea(.all)
            
            Button {
                /// Dismiss the Second View
                mode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "xmark")
                    .foregroundColor(.black)
                    .font(.title)
                    .padding(15)
            }

        }
    }
}

#Preview {
    SheetsBootcamp()
}
