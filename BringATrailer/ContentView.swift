//
//  ContentView.swift
//  BringATrailer
//
//  Created by Wayne Dahlberg on 6/14/24.
//

import SwiftUI

struct ContentView: View {
  @StateObject private var auctionData = AuctionData()
  
  var body: some View {
    NavigationView {
      if let auctions = auctionData.auctions {
        List(auctions) { auction in
          NavigationLink(destination: TestAuctionDetailView(auction: auction)) {
            TestAuctionRowView(auction: auction)
          }
          NavigationLink(destination: LottieView()) {
            Text("Lottie Splash")
          }
        }
        .navigationTitle("Auctions")
      } else {
        ProgressView("Loading auctions")
          .navigationTitle("Auctions")
      }
    }
  }
}

private var dateFormatter: DateFormatter {
  let formatter = DateFormatter()
  formatter.dateStyle = .medium
  return formatter
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
