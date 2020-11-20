//
//  TripCardView.swift
//  SwiftUICarousel1
//
//  Created by Andreea Andro on 20/11/2020.
//

import SwiftUI

struct TripCardView: View {
    let imageView: String
    let destinationName: String
    
    @Binding var isShowDetails: Bool
    
    var body: some View {
        ZStack {
            Image(imageView)
                .resizable()
                .scaledToFill()
                .overlay(
                    Text(destinationName)
                        .font(.system(.headline, design: .rounded))
                        .fontWeight(.heavy)
                        .padding(10)
                        .background(Color.white)
                        .padding([.bottom, .leading])
                        .opacity(self.isShowDetails ? 0.0 : 1.0)
                        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .bottomLeading)
                
                )
        }
    }
}

struct TripCardView_Previews: PreviewProvider {
    static var previews: some View {
        TripCardView(imageView: "london", destinationName: "London", isShowDetails: .constant(true))
    }
}
