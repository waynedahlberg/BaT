//
//  Extension+Bundle.swift
//  BaT
//
//  Created by Wayne Dahlberg on 6/14/24.
//

import Foundation

extension Bundle {
  public func decode<T: Decodable>(_ type: T.Type, from file: String, dateDecodingStrategy: JSONDecoder.DateDecodingStrategy = .iso8601, keyDecodingStrategy: JSONDecoder.KeyDecodingStrategy = .useDefaultKeys) -> T {
    
    guard let url = self.url(forResource: file, withExtension: nil) else {
      fatalError("Failed to locate \(file) in bundle.")
    }
    
//    if let urlCheck = Bundle.main.url(forResource: "auctions", withExtension: "json"),
//       let data = try? Data(contentsOf: urlCheck),
//       let json = try? JSONSerialization.jsonObject(with: data, options: []) {
//      print(json)
//    }
    
    guard let data = try? Data(contentsOf: url) else {
      fatalError("Failed to load \(file) from bundle.")
    }
    
    let decoder = JSONDecoder()
    decoder.keyDecodingStrategy = keyDecodingStrategy
    decoder.dateDecodingStrategy = dateDecodingStrategy
    
    do {
      let decodedData = try decoder.decode(T.self, from: data)
      return decodedData
    } catch let DecodingError.dataCorrupted(context) {
      print("Data corrupted: \(context.debugDescription)")
    } catch let DecodingError.keyNotFound(key, context) {
      print("Key '\(key)' not found: \(context.debugDescription)")
    } catch let DecodingError.typeMismatch(type, context) {
      print("Type '\(type)' mismatch: \(context.debugDescription)")
    } catch let DecodingError.valueNotFound(value, context) {
      print("Value '\(value)' not found: \(context.debugDescription)")
    } catch {
      print("Failed to decode \(file) from bundle: \(error.localizedDescription)")
    }
    
    fatalError("Failed to decode \(file) from bundle...")
  }
}
