//
//  AuctionDetailView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct AuctionDetailView: View {
  @StateObject private var auctionData = AuctionData()
  @State var auction: Auction
  
  var body: some View {
    Text("Hello World!")
    Text("The auction name is: \(auction.auctionTitle)")
  }
}

#Preview {
  AuctionDetailView(auction: AuctionData().auctions![0])
}
