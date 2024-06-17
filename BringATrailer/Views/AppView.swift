//
//  TabView.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/15/24.
//

import SwiftUI

struct AppView: View {
  @State private var selectedTab: Int = 0
  
  var body: some View {
    TabView(selection: self.$selectedTab) {
      HomeView().tabItem {
        Label("Home", image: "home")
          .tint(self.selectedTab == 0 ? .red : .blue)
      }.tag(0)
      
      VStack(spacing: 20) {
        Button("Go to Home") { self.selectedTab = 0}
        Button("Go to Search") { self.selectedTab = 2 }
        Button("Go to Listings") { self.selectedTab = 3}
        Button("Go to Account") { self.selectedTab = 4 }
      }.tabItem {
        Label("Watchlist", image: "watchlist")
      }.tag(1)
      
      VStack(spacing: 20) {
        Button("Go to Home") { self.selectedTab = 0}
        Button("Go to Watchlist") { self.selectedTab = 1 }
        Button("Go to Listings") { self.selectedTab = 3}
        Button("Go to Account") { self.selectedTab = 4 }
      }.tabItem {
        Label("Search", image: "auctions")
      }.tag(2)
      
      VStack(spacing: 20) {
        Button("Go to Home") { self.selectedTab = 0}
        Button("Go to Watchlist") { self.selectedTab = 1}
        Button("Go to Search") { self.selectedTab = 2 }
        Button("Go to Account") { self.selectedTab = 4 }
      }.tabItem {
        Label("Listings", image: "listings")
      }.tag(3)
      
      VStack(spacing: 20) {
        Button("Go to Home") { self.selectedTab = 0}
        Button("Go to Watchlist") { self.selectedTab = 1}
        Button("Go to Search") { self.selectedTab = 2 }
        Button("Go to Listings") { self.selectedTab = 3 }
      }.tabItem {
        Label("Account", image: "account")
      }.tag(4)
    }
  }
}

#Preview {
  AppView()
}
