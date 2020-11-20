//
//  ContentView.swift
//  SwiftUICarousel1
//
//  Created by Andreea Andro on 20/11/2020.
//

import SwiftUI

struct ContentView: View {
    @State private var isCardTapped = false
    
    var body: some View {
        GeometryReader { outerView in
            HStack(alignment: .center) {
                ForEach(sampleTrips.indices) { index in
                    TripCardView(imageView: sampleTrips[index].image, destinationName: sampleTrips[index].destination, isShowDetails: self.$isCardTapped)
                        .padding(.horizontal, self.isCardTapped ? 0 : 20)
                        .frame(width: outerView.size
                                .width, height: 500)
                }
            }
            .frame(width: outerView.size.width, height: outerView.size.height, alignment: .leading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
