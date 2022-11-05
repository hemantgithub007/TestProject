//
//  Latest_Currency_Rate.swift
//  PayPayTest
//
//  Created by hemant kumar on 03/11/22.
//

import Foundation

struct Latest_Currency_Rate: Codable {
    var rates: [String: Double]?
    var disclaimer: String?
    var license: String?
    var timestamp: Double?
    var base: String?
   
    
    enum CodingKeys: String, CodingKey {
        
        case rates
        case disclaimer
        case license
        case timestamp
        case base

    }
}
