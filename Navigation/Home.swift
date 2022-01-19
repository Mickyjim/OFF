////
////  Home.swift
////  OFF
////
////  Created by Michael Favre on 11/12/2021.
////

import SwiftUI

struct Home: View {
    
    @State var selectedTab: TabBarIndex = .home
        
        var body: some View {
            ZStack(alignment: .bottom, content: {
                
                Color("TabBar")
                    .ignoresSafeArea()
                
                switch selectedTab {
                case .home:
                    HomeView()
                case .board:
                    BoardView()
                case .donate:
                    DonateView()
                case .video:
                    VideoView()
                case .about:
                    AboutView()
                }
                HStack {
                    Spacer()
                    CustomTabBar(selectedTab: $selectedTab)
                }
            })
        }
    }

