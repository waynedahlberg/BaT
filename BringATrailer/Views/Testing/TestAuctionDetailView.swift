//
//  AuctionDetailView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct TestAuctionDetailView: View {
  @Environment(\.openURL) var openURL
  
  let auction: Auction
  
  var body: some View {
    ScrollView {
      VStack {
        Text(auction.auctionTitle)
          .font(.largeTitle)
          .fontWeight(.bold)
        Text("Seller: \(auction.seller)")
          .font(.title2)
        Text("Sold for: \(auction.soldFor)")
          .font(.title2)
        Text("Auction Started: \(formattedDate(auction.auctionStarted))")
        Text("Auction Ended: \(formattedDate(auction.auctionEnded))")
        Text("Views: \(auction.views)")
        Text("Watchers: \(auction.watchers)")
        Text("Comments: \(auction.commentsNumber)")
        Text("Seller Location: \(auction.sellerLocation)")
        Text("Model Year: \(auction.modelYear)")
        Text("Make: \(auction.make)")
        Text("Model: \(auction.model)")
        Text("Era: \(auction.era)")
        Text("Origin: \(auction.origin)")
        Button(action: {
          open(auction.shareURL)
        }, label: {
          Text("Share Auction")
        })
      }
      .padding()
      .navigationTitle(auction.auctionTitle)
      .navigationBarTitleDisplayMode(.inline)
    }
  }
  
  private func formattedDate(_ date: Date) -> String {
    let formatter = DateFormatter()
    formatter.dateStyle = .medium
    return formatter.string(from: date)
  }
  
  func open(_ url: URL) {
    openURL(url)
  }
}

//#Preview {
//  AuctionDetailView(auction: auctionData[0])
//}
