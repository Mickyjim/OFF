//
//  CstomTabBar.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct CustomTabBar: View {
    
    @Binding var selectedTab: TabBarIndex
    
    @State var tabPoints: [CGFloat] = []
    
    var body: some View {
        HStack(spacing: 0) {
            
            TabBarButton(image: "house",
                         selectedValue: .home,
                         selectedTab: $selectedTab,
                         tabPoints: $tabPoints)
            TabBarButton(image: "person.3",
                         selectedValue: .board,
                         selectedTab: $selectedTab,
                         tabPoints: $tabPoints)
            TabBarButton(image: "heart",
                         selectedValue: .donate,
                         selectedTab: $selectedTab,
                         tabPoints: $tabPoints)
            TabBarButton(image: "video",
                         selectedValue: .video,
                         selectedTab: $selectedTab,
                         tabPoints: $tabPoints)
            TabBarButton(image: "info.circle",
                         selectedValue: .about,
                         selectedTab: $selectedTab,
                         tabPoints: $tabPoints)
        }
        .padding(12)
        .background(
            Color.green
                .clipShape(TabCurve(tabPoint: getCurvePoint() - 23))
        )
        .overlay (
            Circle()
                .fill(Color.green)
                .frame(width: 10, height: 10)
                .offset(x: getCurvePoint() - 28)
            , alignment: .bottomLeading
        )
        .cornerRadius(30)
        .padding(.horizontal)
    }
    
    func getCurvePoint() -> CGFloat {
        if tabPoints.isEmpty {
            return 10
        } else {
            switch selectedTab {
            case .home:
                return tabPoints[0]
            case .board:
                return tabPoints[1]
            case .donate:
                return tabPoints[2]
            case .video:
                return tabPoints[3]
            default:
                return tabPoints[4]
            }
        }
    }
}

struct CustomTabBar_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TabBarButton: View {
    
    var image: String
    let selectedValue: TabBarIndex
    
    @Binding var selectedTab: TabBarIndex
    @Binding var tabPoints: [CGFloat]
    
    var body: some View {
        GeometryReader { reader -> AnyView in
            
            let midX = reader.frame(in: .global).midX
            
            DispatchQueue.main.async {
                if tabPoints.count <= 4 {
                    tabPoints.append(midX)
                }
            }
            return AnyView(
                Button(action: {
                    withAnimation(.interactiveSpring(response: 0.6, dampingFraction: 0.5, blendDuration: 0.5)) {
                        selectedTab = selectedValue
                    }
                }, label: {
                    
                    Image(systemName: "\(image)\(selectedTab == selectedValue ? ".fill" : "")")
                        .font(.system(size: 25, weight: .semibold))
                        .foregroundColor(Color("TabSelected"))
                        .offset(y: selectedTab == selectedValue ? -10 : 0)
                })
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
            )
        }
        .frame(height: 30)
    }
}
