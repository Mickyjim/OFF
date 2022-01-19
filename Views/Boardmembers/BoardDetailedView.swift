//
//  BoardDetailedView.swift
//  OFF
//
//  Created by Michael Favre on 15/12/2021.
//

import SwiftUI

struct BoardDetailedView: View {
    
    @Environment(\.presentationMode) var present
    @State var isSmallDevice = UIScreen.main.bounds.height < 750
    
    var card: BoardCard
    
    var body: some View {
        VStack {
            HStack {
                Button(action: { present.wrappedValue.dismiss() }) {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 24, weight: .bold))
                        .background(Color(UIColor.systemBackground))
                }
                
                Spacer(minLength: 0)
            }
            .padding([.horizontal, .top])
            
            VStack(alignment: .leading, spacing: 10) {
                
                Text(card.title)
                    .font(.system(size: isSmallDevice ? 25 : 35, weight: .heavy))
                    .background(Color(UIColor.systemBackground))
            }
            .padding(.top)
            
            VStack {
                HStack(alignment: .top, spacing: 20) {
                    VStack(alignment: .leading, spacing: 10) {
                        
                        Image("OFF")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .clipShape(Circle())
                            .padding()
                            .frame(height: 100)
                    }
                    
                    Image(card.image)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: UIScreen.main.bounds.width / 2.45)
                        .cornerRadius(20)
                        .offset(y: isSmallDevice ? 15 : -15)
                        .padding(.top, -15)
                }
                
                Text(card.text)
                    .font(isSmallDevice ? .subheadline : .none)
                    .fontWeight(.medium)
                    .foregroundColor(Color.white)
                    .multilineTextAlignment(.leading)
                    .padding(.top)
                
                Spacer(minLength: 0)
            }
            .padding()
            .background(
                card.color
                    .clipShape(CustomShape())
            )
            .padding()
        }
    }
}
