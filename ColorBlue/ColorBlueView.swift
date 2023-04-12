//
//  ContentView.swift
//  ColorBlue
//
//  Created by Bulent on 12.04.2023.
//

import SwiftUI

struct ColorBlueView: View {
    var body: some View {
        ZStack {
            
            Color(.systemBlue)
                .ignoresSafeArea()
            
        VStack{
            
            Text("Color Blue")
                .foregroundColor(.white)
                .font(.title2)
            }
        }
    }
}

struct ColorBlueView_Previews: PreviewProvider {
    static var previews: some View {
        ColorBlueView()
    }
}
