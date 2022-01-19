//
//  DonateCard.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct DonateCard: Identifiable, Hashable {
    var id = UUID().uuidString
    let title: String
    let image: String
    let cardColor: Color
}

var donateCards = [
    DonateCard(
        title: "$50",
        image: "OFF",
        cardColor: Color("Background 11")
    ),
    DonateCard(
        title: "$100",
        image: "OFF",
        cardColor: Color("Background 12")
    ),
    DonateCard(
        title: "$250",
        image: "OFF",
        cardColor: Color("Background 13")
    ),
    DonateCard(
        title: "$500",
        image: "OFF",
        cardColor: Color("Background 14")
    ),
    DonateCard(
        title: "$1000",
        image: "donation",
        cardColor: Color("Background 15")
    ),
    DonateCard(
        title: "$2500",
        image: "OFF",
        cardColor: Color("Background 16")
    ),
    DonateCard(
        title: "$5000",
        image: "OFF",
        cardColor: Color("Background 17")
    ),
    DonateCard(
        title: "$10000",
        image: "OFF",
        cardColor: Color("Background 18")
    )
]
