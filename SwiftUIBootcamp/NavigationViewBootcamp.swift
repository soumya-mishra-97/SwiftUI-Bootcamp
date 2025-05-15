//
//  NavigationViewBootcamp.swift
//  SwiftUIBootcamp
//
//  Created by Soumya Mishra on 05/05/25.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                ForEach(1..<15, id: \.self) { index in
                    if index == 2 {
                        NavigationLink(destination: SecondScreenView()) {
                            Text("Container \(index)")
                                .foregroundColor(.black)
                                .underline()
                                .padding(10)
                        }
                    } else {
                        Text("Container \(index)")
                            .padding(10)
                    }
                }
                .padding()
                
                /*NavigationLink(destination: SecondScreenView()) {
                    Text("Container 1")
                        .foregroundColor(.black)
                        .underline()
                        .padding(10)
                }
                
                Text("Container 2")
                    .padding(10)
                
                Text("Container 3")
                    .padding(10)
                
                Text("Container 4")
                    .padding(10)
                
                Text("Container 5")
                    .padding(10)*/
                
            }.scrollIndicators(.hidden)
                .navigationTitle("NaviagtionView")
                .navigationBarTitleDisplayMode(.automatic)
                .navigationBarItems(
                    leading: HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                    trailing: NavigationLink(destination: SettingsView()) {
                        Image(systemName: "gear")
                    }.accentColor(.red)
                )
        }
    }
}

/// Second Screen
struct SecondScreenView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack{
            Color.white.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    customNavigationBar
                    
                    Spacer()
                }
                
                Spacer()
                
                NavigationLink(destination: ThirdScreenView()) {
                    Text("Click Here")
                        .foregroundColor(.black)
                        .underline()
                }
                
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
    
    /// Customize Navigation Bar
    var customNavigationBar: some View {
        VStack(alignment: .leading){
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .padding()
            }
            
            Text("SecondView")
                .foregroundColor(.black)
                .font(.system(size: 35, weight: .bold))
                .padding(.top, 20)
                .padding(.leading, 20)
        }
    }
}

/// Third Screen
struct ThirdScreenView: View {
    var body: some View {
        NavigationView{
            ZStack {
                Color.gray.opacity(0.2)
                    .edgesIgnoringSafeArea(.all)
                
                Text("Navigation Bootcamp Completed.")
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                
            }.navigationTitle("ThirdView")
        }
    }
}

/// Settings Screen
struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color.gray.opacity(0.2)
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                HStack{
                    customNavigationBar
                    
                    Spacer()
                }
                
                Spacer()
                
                Text("Settings.")
                    .foregroundColor(.black)
                    .font(.system(size: 16))
                
                Spacer()
            }
        }.navigationBarHidden(true)
        
    }
    
    /// Customize Navigation Bar
    var customNavigationBar: some View {
        VStack(alignment: .leading){
            Button {
                presentationMode.wrappedValue.dismiss()
            } label: {
                Image(systemName: "chevron.left")
                    .foregroundColor(.black)
                    .font(.system(size: 25))
                    .padding()
            }
            
            Text("SettingsView")
                .foregroundColor(.black)
                .font(.system(size: 35, weight: .bold))
                .padding(.top, 20)
                .padding(.leading, 20)
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
