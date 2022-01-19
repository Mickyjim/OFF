//
//  BoardCard.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct BoardCard: Identifiable, Hashable {
    var id = UUID().uuidString
    let title: String
    let subtitle: String
    let text:  String
    let image: String
    let color: Color
}

var boardCards = [
    BoardCard(
        title: "Mazen Karnaby",
        subtitle: "Founder",
        text: "Mazen Karnaby is the Founder and CEO of Cedra pharmacy, a chain of Nationwide pharmacies operating throughout the United States. Mazen's other business ventures include Real Estate holdings and several restaurant group operations. Mazen graduated in 1999 with a B.S in Pharmacy from St Johns University. Mazen's commitment to the underprivileged pushed him to operate multiple pharmacies in the bronx and queens to provide a white glove service to the needy and vulnerable populations across New York City.",
        image: "Mazen",
        color: Color("Background 1")
    ),
    BoardCard(
        title: "Marwan Karnaby",
        subtitle: "Co-Founder",
        text: "Marwan Karnaby is the chairman and founder of Cedra Holdings LLC. He received his Bachelor of Science degree in Pharmacy & Medical Technology from St. John’s University and is a prominent member of different charitable organizations with contributions to various vulnerable communities.",
        image: "Marwan",
        color: Color("Background 2")
    ),
    BoardCard(
        title: "Karen Aour Khabbaz",
        subtitle: "Founding Board Member (Head of Operations & Outreach)",
        text: "Ms. Khabbaz is a Lebanese American and has lived between Beirut, London and New York City for the past 15 years. In New York, she is highly involved in the City’s philanthropic, arts and museum scene(s). Karen holds a BA in Economics and Political Science from The American University in Beirut (AUB), and a Masters from the Cass Business School at the City University of London. She has interned with the British Red Cross in London and at the United Nations in Beirut. She also held jobs in Finance in London and New York.",
        image: "Karen",
        color: Color("Background 3")
    ),
    BoardCard(
        title: "Mira Kassar Massoud",
        subtitle: "Founding Board Member (Head of Public Realtions & Outreach)",
        text: "Mira kassar is a Lebanese Canadian and has lived between Beirut and London. Mira holds a BA in Business Administration from the American University of Beirut and a Masters in fashion promotion from Instituto Marangoni in London. Mira is involved in philanthropic work with various charities in Lebanon and London.",
        image: "Mira",
        color: Color("Background 6")
    ),
    BoardCard(
        title: "Gilbert Sakr",
        subtitle: "Executive Director of Operations (Middle East/North Africa)",
        text: "An accomplished, dynamic Marketeer, business development, and general management professional with a successful career spanning 19 years with reputed multinational companies overlooking different regions in the Middle East and Africa. Previously employed by Red Bull as Regional General Manager Africa. Currently acting CEO for Business Set Up Consultants in Dubai and advisory board member for Cuemby, GigRonin, and Uwavee. Gilbert holds a BA in Business Marketing from the Notre Dame University in Lebanon and an MBA in Emerging Markets and International Business from the University of Liverpool.",
        image: "Gilbert",
        color: Color("Background 5")
    ),
    BoardCard(
        title: "Sam Sweiden",
        subtitle: "Public Relations (North America)",
        text: "Dr. Sam Sweidan is a lebanese american pharmacist and an entrepreneur. Dr. Sweidan owns and operates pharmacies in New York state. He holds a B.S. in Biology from Montclair State University and a Doctorate in Pharmacy from Touro College,NY.",
        image: "Sam",
        color: Color("Background 9")
    )
]
