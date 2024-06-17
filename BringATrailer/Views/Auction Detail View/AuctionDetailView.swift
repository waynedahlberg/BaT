//
//  AuctionDetailView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct AuctionDetailView: View {
  let auction: Auction
  
  var body: some View {
    ScrollView(.vertical) {
      VStack(alignment: .leading) {
        GeometryReader { geo in
          Image(auction.heroImage)
            .resizable()
            .scaledToFill()
            .frame(width: geo.size.width, height: 400)
            .clipped()
        }
        .aspectRatio(contentMode: .fit) // nifty trick to not mess up the layout with a GeometryReader
        
        Text("Hello world! \(auction.heroImage) ")
        Text("This auction is a \(auction.auctionTitle)")
          .font(.custom(FontManager.OpenSans.semibold, size: 21))
      }
    }
    .toolbar {
      ToolbarItem(placement: .topBarTrailing) {
        Image(systemName: "star")
      }
    }
  }
}

#Preview {
  AuctionDetailView(auction: Bundle.main.decode([Auction].self, from: "auctions.json").first!)
}
