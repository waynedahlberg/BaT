//
//  AuctionRowView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct TestAuctionRowView: View {
  let auction: Auction
  
  var body: some View {
    VStack(alignment: .leading) {
      Text(auction.auctionTitle)
        .font(.headline)
      Text("Seller: \(auction.seller)")
        .font(.subheadline)
        .foregroundStyle(.secondary)
      Text("Sold for: \(auction.soldFor) USD")
        .font(.subheadline)
        .foregroundStyle(.primary)
    }
  }
}

//#Preview {
//  AuctionRowView()
//}
