//
//  Auction.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/14/24.
//

import Foundation

struct Auction: Identifiable, Decodable {
  struct Video: Decodable {
    let thumbnail: String
    let filename: String
    let description: String
  }

  let id: Int
  let auctionTitle: String
  let seller: String
  let buyer: String
  let soldFor: String
  let auctionStarted: Date
  let auctionEnded: Date
  let views: String
  let watchers: String
  let shareURL: URL
  let commentsNumber: Int
  let sellerLocation: String
  let modelYear: String
  let make: String
  let model: String
  let era: String
  let origin: String
  let category: String
  let essentials: [String]
  let lot: String
  let privateParty: Bool
  let heroImage: String
  let descriptionImages: [String]
  let thumbnailImages: [String]
  let fullImages: [String]
  let descriptionParagraphs: [String]
  let videos: [Video]

  private enum CodingKeys: String, CodingKey {
    case id
    case auctionTitle = "auction_title"
    case seller
    case buyer
    case soldFor = "sold_for"
    case auctionStarted = "auction_started"
    case auctionEnded = "auction_ended"
    case views
    case watchers
    case shareURL = "share_url"
    case commentsNumber = "comments_number"
    case sellerLocation = "seller_location"
    case modelYear = "model_year"
    case make
    case model
    case era
    case origin
    case category
    case essentials
    case lot
    case privateParty
    case heroImage = "hero_image"
    case descriptionImages = "description_images"
    case thumbnailImages = "thumbnail_images"
    case fullImages = "full_images"
    case descriptionParagraphs = "description_paragraphs"
    case videos
  }
}
