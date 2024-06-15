//
//  AuctionData.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/14/24.
//

import Foundation

class AuctionData: ObservableObject {
  @Published var auctions: [Auction]?
  
  init() {
    loadAuction()
  }
  
  func loadAuction() {
    auctions = Bundle.main.decode([Auction].self, from: "auctions.json")
  }
}
