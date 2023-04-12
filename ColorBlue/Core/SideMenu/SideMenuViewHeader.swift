//
//  SideMenuHeaderView.swift
//  ColorBlue
//
//  Created by Bulent on 12.04.2023.
//

import SwiftUI

struct SideMenuViewHeader: View {
    
    @Binding var isShowing : Bool
    
    var body: some View {
        
        ZStack(alignment: .topLeading){
           
        HStack{
            
            Button(action: {
                
                withAnimation(.spring()) {
                    isShowing.toggle()
                }
                
            }, label: {
                
               Image(systemName: "repeat")
                
            })
              
             Spacer()
              
            }
            .padding(.horizontal)
            .foregroundColor(.white)
            .font(.system(size: 24))
            
        }
        
    }
}

struct SideMenuViewHeader_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuViewHeader(isShowing: .constant(true))
    }
}
