//
//  AboutView.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct AboutView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("TabBar")
                    .edgesIgnoringSafeArea(.all)
                ScrollView {
                    VStack {
                        Text("""
    Marked by the impact of the Syrian crisis and decades of fiscal and political mismanagement, the dire economic situation in Lebanon turned into a deep crisis leading to mass protests across the country. The civil unrest and failure to implement urgent economic reforms has had a detrimental impact on the financial and banking sectors and the overall standard of living in Lebanon, leading to the scarcity of basic commodities and fuel. Dollars are impossible to find and unemployment is soaring. With the collapse of the local currency and the extreme increase in food prices, hunger is knocking on everyone’s door. 75% of the population lives below the poverty line.

    Operation full fridge started as reaction to a slew of sad pictures that depicted misery and agony of fellow Lebanese citizens. It then led to a massive undertaking to fulfill a pledge to ensure that every fridge in Lebanon is full. We believe that access to food is a human right and a social responsibility on all of us.

    O.F.F provides a bridge for all Lebanese expats, institutions and corporations to connect and support Lebanon's most affected population from this gross economic genocide. Our goal is to deliver food to vulnerable families to complete a promise that every fridge in Lebanon is full.

    O.F.F is a collection of Lebanese citizens and expats coming together to make a difference.  We are not defined by our sects, but with our love and loyalty to our land, its special people and the promise that is Lebanon.

    O.F.F is partnering up with a number of Lebanese NGO's, relying on their extensive knowledge of the economic landscape and the severity of the impact on the Lebanese population. We are proud to announce a partnership with Beit El Baraka, IRAP and Food Blessed- as some of the leading charity groups on the ground.

    As Winston Churchill once said, "We make a living by what we get, but we make a life by what we give".
    """
                        )
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.leading)
                            .padding()

                    }
                    Spacer(minLength: 50)
                    .navigationTitle("About us")
                    
                }
            }
        }
    }
}

struct AboutView_Previews: PreviewProvider {
    static var previews: some View {
        AboutView()
    }
}
