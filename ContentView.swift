//
//  SwiftUIView.swift
//  Moovo2
//
//  Created by Maciej Sączewski on 24/11/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var location = Location()
    
    @State var isSearchExtended: Bool = false
    
    var body: some View {
        ZStack {
            // Search bar for locations
            VStack {
                HStack {
                    Spacer()
                    SearchLocation(locationStr: $location.str)
                        .padding(.trailing, 7)
                }
                .padding(.top, 45)
                Spacer()
            }
            
            // Search results for bar
            VStack {
                Rectangle()
                    .fill(Color.white.opacity(0.7))
                    .frame(height: location.str != "" ? 100 : 0)
                    .padding([.leading, .trailing], 31)
                    .padding(.top, 45+55)
                    .padding()
                    .animation(.spring())
                Spacer()
            }
        }
        .background(Color.gray)
        .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
