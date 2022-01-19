//
//  FollowView.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct FollowView: View {
    
    var body: some View {
        VStack {
            HStack(alignment: .center) {
                Link(destination: URL(string: "https://www.operationfullfridge.com/")!) {
                    Image("OFF")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .cornerRadius(20)
                        .frame(width: 60, height: 60)
                        .padding(8)
                }

                Link(destination: URL(string: "https://www.operationfullfridge.com/pages/contact-us")!) {
                    Image("contact")
                        .resizable()
                        .aspectRatio( contentMode: .fit)
                        .cornerRadius(20)
                        .frame(width: 70, height: 70)
                        .padding(10)
                }

                Link(destination: URL(string: "https://www.instagram.com/Operationfullfridge/")!) {
                    Image("Instagram")
                        .resizable()
                        .aspectRatio( contentMode: .fill)
                        .cornerRadius(20)
                        .frame(width: 90, height: 90)
                        .padding(10)
                }
            }
        }
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView()
            
    }
}
