//
//  MainTabView.swift
//  ColorBlue
//
//  Created by Bulent on 12.04.2023.
//

import SwiftUI

struct MainTabView: View {
    
    @State private var selectedIndex = 0
    @State private var isShowing = false
    
    var body: some View {
       
        
        NavigationView{
        
            ZStack{
                
               
                
                if isShowing {
                    
                    SideMenuView(isShowing: $isShowing)
                    
                }
               
            HomeView()
                    .cornerRadius(isShowing ? 50 : 0)
                    .offset(x: isShowing ? 380 : 0 , y: isShowing ? 0 : 0)
                    .scaleEffect(isShowing ? 1 : 1)
                
                .navigationBarItems(leading: Button(action: {
                    
                    withAnimation(.spring()) {
                        
                        isShowing.toggle()
                        
                    }
                    
                }, label: {
                    
                    Image(systemName: "text.justify")
                    
                }), trailing: Button(action: {}, label: {
                    
                }))
              
            }
        }
    }
}



struct HomeView: View {
    var body: some View {
        ZStack{
            
            Color.white
                .ignoresSafeArea()
            
            
            MainMenuView()
            
            
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        MainTabView()
    }
}



struct MainMenuView: View {
    
    @State private var selectedIndex = 0
    
    var body: some View {
        
        TabView(selection: $selectedIndex) {
            
            MainViewCircle()
                .onTapGesture {
                    
                    self.selectedIndex = 1
                    
                } .tabItem{
                    
                    Image(systemName: "circle")
                    
                } .tag(1)
            
           
            
            MainViewRectangle()
                .onTapGesture {
                    self.selectedIndex = 2
                } .tabItem{
                    Image(systemName: "rectangle")
                    
                } .tag(2)
            
          
            
            MainViewTriangle()
            
                .onTapGesture {
                    
                    self.selectedIndex = 0
                    
                } .tabItem{
                    
                    Image(systemName: "triangle")
                    
                } .tag(0)
            
           
            
            MenuViewShield()
            
                .onTapGesture {
                    
                    self.selectedIndex = 3
                    
                } .tabItem{
                    
                    Image(systemName: "shield")
                    
                } .tag(3)
            
            
        }
    }
}


