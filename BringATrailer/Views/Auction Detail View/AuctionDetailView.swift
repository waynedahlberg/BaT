//
//  AuctionDetailView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct AuctionDetailView: View {
  @StateObject private var auctionData = AuctionData()
  
  var body: some View {
    if let auctions = auctionData.auctions {
      List(auctions) { auction in
        NavigationLink(destination: TestAuctionDetailView(auction: auction)) {
          TestAuctionRowView(auction: auction)
        }
      }
      .navigationTitle("Auctions")
    } else {
      ProgressView("Loading auctions")
        .navigationTitle("Auctions")
    }
  }
}

#Preview {
  AuctionDetailView()
}