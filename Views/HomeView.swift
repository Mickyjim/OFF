//
//  HomeView.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        VStack(spacing: 10) {
            NavigationView {
                ScrollView {
                    Section {
                        Image("Vision")
                            .resizable()
                            .scaledToFit()
                            .padding(40)
                        
                        Text("VISION")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Operation Full Fridge is driven by the vision of a Lebanon without hunger")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(8)

                        Image("Mission")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .padding(40)
                        
                        Text("MISSION")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("Our mission Zero Hunger is to end hunger in Lebanon by providing food and life-changing aid to the most vulnerable communities in Lebanon suffering from poverty due to the increasing political fiscal mismanagement and turmoil in the region.")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(8)
                    }
                    
                    Section {
                        Image("Values")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.white)
                            .padding(40)
                        
                        Text("VALUES")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("""
        Rights based: We believe that food is a human right.

        Evidence based: Our actions are informed by evidence and form impactful solutions.

        Equitable: We embrace diversity. At Operation Full Fridge the idea of racial & Sect based discrimination does not exist. We follow a purely humanitarian path.

        Creative: We continuously pursue new and refined solutions to serve the needs of our communities.

        Accountable: Commitments we make are commitments we keep.
        """)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(8)

                        Text("Operation Full Fridge is a 501(c)(3) non profit, non political, non religious organization. Founded in July 2020 and registered in the state of Delaware.")
                            .font(.headline)
                            .fontWeight(.heavy)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(8)

                        Image("flower")
                            .resizable()
                            .scaledToFit()
                            .padding(40)
                        
                        Text("We provide a bridge for all Lebanese expats, institutions and corporations to connect & support Lebanon's most affected population from this gross economic genocide. Our goal is to deliver food to families in need and to complete a promise that every fridge in Lebanon is full. ")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(8)
                    }
                    
                    Section() {
                        Image("Words")
                            .resizable()
                            .scaledToFit()
                            .padding(40)
                        
                        Text("WORDS OF OUR FOUNDERS")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                        
                        Text("""
Our eyes are teary, our spirits are shattered and our Hearts are broken. Lebanon is in each one of us. Lebanon is our pride, Lebanon is our soul, Lebanon is our North Star.

Our people are hungry, our people are in despair, our people are in need.

Operation full fridge is a collection of Lebanese citizens & expats, determined to make a difference. Our resolve is unhinged, our determination is unbreakable and our pledge is to leave no family hungry. Lebanon needs us and we will not falter, nor fail to make the difference.

We love you Lebanon, our Pride, our Holy land, our Home.Yours Truly,Mazen & Marwan Karnaby.
""")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .padding(8)
                        
                        Text("Click below")
                            .font(.title)
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                        FollowView()
                            .padding(8)
                            Spacer()
                    }
                    .padding(10)
                }
                .background(Color("TabBar"))
                .navigationTitle("Who we are")
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
