//
//  SideMenuView.swift
//  ColorBlue
//
//  Created by Bulent on 12.04.2023.
//

import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowing : Bool
    
    var body: some View {
        
        ZStack{
           
            Color(.systemBlue)
                .ignoresSafeArea()
            
            VStack{
//          Header  ------>
            SideMenuViewHeader(isShowing: $isShowing)
            
            
            
            
//          Option  ------>
            
            Spacer()
                
            }
        } .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowing: .constant(true))
    }
}
