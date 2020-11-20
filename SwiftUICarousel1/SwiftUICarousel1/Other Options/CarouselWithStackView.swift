//
//  CarouselWithStackView.swift
//  SwiftUICarousel1
//
//  Created by Andreea Andro on 20/11/2020.
//

import SwiftUI

struct CarouselWithStackView: View {
    @State private var isCardTapped = false
    
    var body: some View {
        GeometryReader { outerView in
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(alignment: .center) {
                    ForEach(sampleTrips.indices) { index in
                        GeometryReader { innerView in
                            TripCardView(imageView: sampleTrips[index].image, destinationName: sampleTrips[index].destination, isShowDetails: self.$isCardTapped)
                        }
                        .padding(.horizontal, 20)
                        .frame(width: outerView.size.width, height: 450)
                    }
                }
            }
            .frame(width: outerView.size.width, height: outerView.size
                    .height, alignment: .leading)
        }
    }
}

struct CarouselWithStackView_Previews: PreviewProvider {
    static var previews: some View {
        CarouselWithStackView()
    }
}
