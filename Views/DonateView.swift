//
//  DonateView.swift
//  OFF
//
//  Created by Michael Favre on 11/12/2021.
//

import SwiftUI

struct DonateView: View {
    @State var donateCards: [DonateCard] = [
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
            title: "$1.000",
            image: "donation",
            cardColor: Color("Background 15")
        ),
        DonateCard(
            title: "$2.500",
            image: "OFF",
            cardColor: Color("Background 16")
        ),
        DonateCard(
            title: "$5.000",
            image: "OFF",
            cardColor: Color("Background 17")
        ),
        DonateCard(
            title: "$10.000",
            image: "OFF",
            cardColor: Color("Background 18")
        )
    ]
    
    @State var showDetailPage: Bool = false
    @State var currentCard: DonateCard?
    @Namespace var animation
    @State var showDetailContent: Bool = false
    
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                VStack(alignment: .leading) {
                    Text("Donations")
                        .font(.largeTitle.bold())
                        .foregroundColor(.white)
                    Label {
                        Text("Choose your amount")
                            .foregroundColor(.white)
                    } icon: {
                        Image(systemName: "arrow.down")
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
            
            GeometryReader { proxy in
                let size = proxy.size
                let trailingCardsToShown: CGFloat = 2
                let trailingSpaceofEachCards: CGFloat = 20
                
                ZStack {
                    ForEach(donateCards) { donateCard in
                        InfiniteStackedCardView(donateCards: $donateCards, donateCard: donateCard, trailingCardsToShown: trailingCardsToShown, trailingSpaceofEachCards: trailingSpaceofEachCards, animation: animation, showDetailPage: $showDetailPage)
                            .onTapGesture {
                                withAnimation(.spring()) {
                                    currentCard = donateCard
                                    showDetailPage = true
                                }
                            }
                    }
                }
                .padding(.leading, 10)
                .padding(.trailing,(trailingCardsToShown * trailingSpaceofEachCards))
                .frame(height: size.height / 1.6)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
        .overlay(
            DetailPage()
        )
    }
    @ViewBuilder
    func DetailPage() -> some View {
        ZStack {
            if let currentCard = currentCard, showDetailPage {
                Rectangle()
                    .fill(currentCard.cardColor)
                    .matchedGeometryEffect(id: currentCard.id, in: animation)
                    .ignoresSafeArea()
                
                VStack(alignment: .center, spacing: 60) {
                    Button {
                        withAnimation {
                            showDetailContent = false
                            showDetailPage = false
                        }
                    } label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.black)
                            .padding(10)
                            .background(Color.white.opacity(0.6))
                            .clipShape(Circle())
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Text("Thank you so much for your generous gift of \(currentCard.title) to support Zero Hunger in Lebanon!  We simply would not be able to pursue our mission if it were not for your support. To proceed, please click on the Donate button below. Thank you!")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top)

                    
                    Link(destination: URL(string: "https://www.operationfullfridge.com/products/donations")!) {
                        Image("donateButton")
                            .resizable()
                            .aspectRatio( contentMode: .fill)
                            .cornerRadius(20)
                            .frame(width: 300, height: 70, alignment: .center)
                            .font(.largeTitle)
                    }
                    
//                    ScrollView(.vertical, showsIndicators: false) {
//                        Text(content)
//                            .padding(.top)
//                    }
                }
                .opacity(showDetailContent ? 1 : 0)
                .foregroundColor(.white)
                .padding(20)
                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .top)
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.15) {
                        withAnimation {
                            showDetailContent = true
                        }
                    }
                }
            }
        }
    }
}

struct DonateView_Previews: PreviewProvider {
    static var previews: some View {
        DonateView()
    }
}

struct InfiniteStackedCardView: View {
    @Binding var donateCards: [DonateCard]
    var donateCard: DonateCard
    var trailingCardsToShown: CGFloat
    var trailingSpaceofEachCards: CGFloat
    var animation: Namespace.ID
    @Binding var showDetailPage: Bool
    @GestureState var isDragging: Bool = false
    @State var offset: CGFloat = .zero
    
    var body: some View {
        
        VStack(alignment: .center, spacing: 10) {
            Text("Donate")
                .font(.title)
                .fontWeight(.bold)
            
            Text(donateCard.title)
                .font(.system(size: 60))
                .fontWeight(.heavy)
                .padding(.top)
            Spacer()
            
            Image("OFF")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 200, height: 200, alignment: .center)
                .cornerRadius(15)
            Spacer()
            
            Label {
                Image(systemName: "arrow.right")
            } icon: {
                Text("Read More")
            }
            .font(.system(size: 15, weight: .semibold))
            .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding()
        .padding(.vertical, 10)
        .foregroundColor(.white)
        .background(
            ZStack {
                
                RoundedRectangle(cornerRadius: 25)
                    .fill(donateCard.cardColor)
                    .matchedGeometryEffect(id: donateCard.id, in: animation)
                }
        )
        .padding(.trailing, -getPadding())
        .padding(.vertical, getPadding())
        .zIndex(Double(CGFloat(donateCards.count) - getIndex()))
        .rotationEffect(.init(degrees: getRotation(angle: 10)))
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .contentShape(Rectangle())
        .offset(x: offset)
        .gesture(
            DragGesture()
                .updating($isDragging, body: { _, out, _ in
                    out = true
                })
                .onChanged( { value in
                    var translation = value.translation.width
                    translation = donateCards.first?.id == donateCard.id ? translation : 0
                    translation = isDragging ? translation : 0
                    translation = (translation < 0 ? translation : 0)
                    offset = translation
                })
                .onEnded( { value in
                    let width = UIScreen.main.bounds.width
                    let cardPassed = -offset > (width / 2)
                    
                    withAnimation(.easeInOut(duration: 0.2)) {
                        if cardPassed {
                            offset = -width
                            removeAndPutBack()
                        } else {
                            offset = .zero
                        }
                    }
                })
        )
    }
    
    func removeAndPutBack () {
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
            var updateCard = donateCard
            updateCard.id = UUID().uuidString
            
            donateCards.append(updateCard)
            
            withAnimation {
                donateCards.removeFirst()
            }
        }
    }
    
    func getRotation(angle: Double) -> Double {
        let width = UIScreen.main.bounds.width - 50
        let progress = offset / width
        
        return Double(progress) * angle
    }
    
    func getPadding() -> CGFloat {
        let maxPadding = trailingCardsToShown * trailingSpaceofEachCards
        let cardPadding = getIndex() * trailingSpaceofEachCards
        
        return (getIndex() <= trailingCardsToShown ? cardPadding : maxPadding)
    }
    
    func getIndex() -> CGFloat {
        let index = donateCards.firstIndex { donateCard in
            return self.donateCard.id == donateCard.id
        } ?? 0
        return CGFloat(index)
    }
}
