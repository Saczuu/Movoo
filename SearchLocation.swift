//
//  ContentView.swift
//  Moovo2
//
//  Created by Maciej Sączewski on 24/11/2020.
//

import SwiftUI

struct SearchLocation: View {
    
    var colorScheme: ColorScheme = ColorScheme.light
    
    @State private var isExpended: Bool = false
    @Binding var locationStr: String
    
    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .onTapGesture {
                    isExpended.toggle()
                }
                .padding(.leading, 4)
            TextField("Enter location", text: $locationStr, onCommit: {
                print("Workde")
            })
            .frame(width: isExpended ? abs(.infinity) : 0)
        }
        .frame(width: isExpended ? abs(.infinity) : 55, height: 55)
        .background(
            Capsule()
                .fill(self.colorScheme == .light ? Color.white : Color.black)
                .opacity(0.7)
        )
        .padding()
        .animation(.easeIn)
        .foregroundColor(self.colorScheme == .light ? .black : .white)
    }
}

struct SearchLocation_Previews: PreviewProvider {
    static var previews: some View {
        SearchLocation(locationStr: .constant("a"))
    }
}
