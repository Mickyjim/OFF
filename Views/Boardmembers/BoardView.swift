//
//  BoardView.swift
//  OFF
//
//  Created by Michael Favre on 13/12/2021.
//

import SwiftUI

struct BoardView: View {
    
    @State var search = ""
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), spacing: 15) {
                        
                        ForEach(boardCards) { card in
                            BoardItemView(card: card)
                        }
                    }
                    .padding(.top, 10)
                }
                .padding()
                Spacer(minLength: 50)
            }
        }
    }
}

struct BoardView_Previews: PreviewProvider {
    static var previews: some View {
        BoardView()
    }
}
