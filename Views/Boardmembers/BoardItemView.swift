//
//  BoardItem.swift
//  OFF
//
//  Created by Michael Favre on 14/12/2021.
//

import SwiftUI

struct BoardItemView: View {
    
    @State var detail = false
    
    var card : BoardCard
    
    var body: some View {
        
        VStack(spacing: 12) {
            Image(card.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(10)
                .frame(width: UIScreen.main.bounds.width / 3, height: 150)
            
            VStack(spacing: 12) {
                Spacer(minLength: 0)
                
                Text(card.title)
                    .font(.system(size: 15, weight: .bold))
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                
                Text(card.subtitle)
                    .font(.footnote)
                    .foregroundColor(Color.white)
                    .clipShape(CustomCorner(corner: [.topLeft, .topRight, .bottomLeft], size: 8))
                    .multilineTextAlignment(.center)
                    .lineLimit(4)
                
                Button(action: { detail.toggle() }) {
                    HStack(spacing: 10) {
                        Text("More")
                            .fontWeight(.semibold)
                        
                        Image(systemName: "chevron.right")
                            .font(.system(size: 12, weight: .heavy))
                    }
                    .foregroundColor(.white)
                }
            }
        }
        .padding(.top)
        .padding(.leading)
        .padding([.bottom, .trailing], 15)
        .background(
            card.color
                .clipShape(CustomCorner(corner: [.topLeft, .topRight, .bottomLeft], size: 25))
                .padding(.top, 55)
        )
        .fullScreenCover(isPresented: $detail) {
            BoardDetailedView(card: card)
        }
    }
}
