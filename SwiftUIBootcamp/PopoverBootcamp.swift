//
//  PopoverBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya on 06/04/25.
//

/// 1. `Sheets` (Default animation and static content)
/// 2.` Transitions` (Best way because it's the dynamic compared to other two and and customize the animation)
/// 3. `Offsets` (it's the dynamic and customize the animation)

import SwiftUI

struct PopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    
    var body: some View {
        ZStack{
            Color.blue.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Show Popover") {
                    showPopover.toggle()
                }.font(.headline)
                    .padding()
                    .background(Color.black)
                    .foregroundColor(Color.white)
                    .cornerRadius(10)
                Spacer()
            }
            
            /// `METHOD 1:  Sheet`
            /*.sheet(isPresented: $showPopover) {
                NewView()
            }*/
            
            /// `METHOD 2:  Transitions`
            /*ZStack{
                if showPopover {
                    NewView(isPresented: $showPopover)
                        .padding(.top, 100)
                        .transition(.move(edge: .bottom))
                        .animation(.spring)
                }
            }.zIndex(2.0)*/
            
            /// `METHOD 3:  Animation OFFSET`
            NewView(isPresented: $showPopover)
                .padding(.top, 100)
                .offset(y: showPopover ? 0 : UIScreen.main.bounds.height)
                .animation(.spring(), value: showPopover)
        }
    }
}

struct NewView: View {
    
    @Environment(\.presentationMode) var presentationMode
    @Binding var isPresented: Bool
    
    var body: some View {
        ZStack(alignment: .leading){
            Color.pink.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button {
                    // presentationMode.wrappedValue.dismiss()
                    isPresented.toggle()
                } label: {
                    Image(systemName: "xmark")
                        .padding()
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
