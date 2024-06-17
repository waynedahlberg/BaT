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
    VStack {
      Text("Hello world!")
      Text("This auction is a \(auction.auctionTitle)")
    }
  }
}

#Preview {
  AuctionDetailView(auction: Bundle.main.decode([Auction].self, from: "auctions.json").first!)
}
