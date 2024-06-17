//
//  HomeView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct HomeView: View {
  @StateObject private var auctionData = AuctionData()
  
  var body: some View {
    NavigationStack {
      Group {
        if let auctions = auctionData.auctions, !auctions.isEmpty {
          List(auctions) { auction in
            NavigationLink(destination: AuctionDetailView(auction: auction)) {
              AuctionRowView(auction: auction)
            }
          }
        }
      }
      .navigationTitle("Auctions")
      .navigationBarTitleDisplayMode(.large)
    }
  }
}

struct AuctionRowView: View {
  let auction: Auction
  
  var body: some View {
    VStack(alignment: .leading, spacing: 8) {
      Text(auction.auctionTitle)
        .font(.headline)
      Text("Current Bid: $\(auction.soldFor)")
        .foregroundStyle(.secondary)
    }
  }
}
  
#Preview {
    HomeView()
}
