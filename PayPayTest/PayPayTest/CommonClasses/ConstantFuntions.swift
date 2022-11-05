//
//  ConstantFuntions.swift
//  PayPayTest
//
//  Created by hemant kumar on 02/11/22.
//

import Foundation
import UIKit



import Foundation
import UIKit

class Constants
{
    static let baseUrl = "https://openexchangerates.org/api/"
    static let openExchangeRate_ID = "8c45db972be24228995c224925cdcc3e"
    
    
    
    var currencyCode_Dict = [String]()
    
    static let currencey_Key: [String] =
        
        [                             "AED",
                                      "AFN",
                                      "ALL",
                                      "AMD",
                                      "ANG",
                                      "AOA",
                                      "ARS",
                                      "AUD",
                                      "AWG",
                                      "AZN",
                                      "BAM",
                                      "BBD",
                                      "BDT",
                                      "BGN",
                                      "BHD",
                                      "BIF",
                                      "BMD",
                                      "BND",
                                      "BOB",
                                      "BRL",
                                      "BSD",
                                      "BTC",
                                      "BTN",
                                      "BWP",
                                      "BYN",
                                      "BZD",
                                      "CAD",
                                      "CDF",
                                      "CHF",
                                      "CLF",
                                      "CLP",
                                      "CNH",
                                      "CNY",
                                      "COP",
                                      "CRC",
                                      "CUC",
                                      "CUP",
                                      "CVE",
                                      "CZK",
                                      "DJF",
                                      "DKK",
                                      "DOP",
                                      "DZD",
                                      "EGP",
                                      "ERN",
                                      "ETB",
                                      "EUR",
                                      "FJD",
                                      "FKP",
                                      "GBP",
                                      "GEL",
                                      "GGP",
                                      "GHS",
                                      "GIP",
                                      "GMD",
                                      "GNF",
                                      "GTQ",
                                      "GYD",
                                      "HKD",
                                      "HNL",
                                      "HRK",
                                      "HTG",
                                      "HUF",
                                      "IDR",
                                      "ILS",
                                      "IMP",
                                      "INR",
                                      "IQD",
                                      "IRR",
                                      "ISK",
                                      "JEP",
                                      "JMD",
                                      "JOD",
                                      "JPY",
                                      "KES",
                                      "KGS",
                                      "KHR",
                                      "KMF",
                                      "KPW",
                                      "KRW",
                                      "KWD",
                                      "KYD",
                                      "KZT",
                                      "LAK",
                                      "LBP",
                                      "LKR",
                                      "LRD",
                                      "LSL",
                                      "LYD",
                                      "MAD",
                                      "MDL",
                                      "MGA",
                                      "MKD",
                                      "MMK",
                                      "MNT",
                                      "MOP",
                                      "MRU",
                                      "MUR",
                                      "MVR",
                                      "MWK",
                                      "MXN",
                                      "MYR",
                                      "MZN",
                                      "NAD",
                                      "NGN",
                                      "NIO",
                                      "NOK",
                                      "NPR",
                                      "NZD",
                                      "OMR",
                                      "PAB",
                                      "PEN",
                                      "PGK",
                                      "PHP",
                                      "PKR",
                                      "PLN",
                                      "PYG",
                                      "QAR",
                                      "RON",
                                      "RSD",
                                      "RUB",
                                      "RWF",
                                      "SAR",
                                      "SBD",
                                      "SCR",
                                      "SDG",
                                      "SEK",
                                      "SGD",
                                      "SHP",
                                      "SLL",
                                      "SOS",
                                      "SRD",
                                      "SSP",
                                      "STD",
                                      "STN",
                                      "SVC",
                                      "SYP",
                                      "SZL",
                                      "THB",
                                      "TJS",
                                      "TMT",
                                      "TND",
                                      "TOP",
                                      "TRY",
                                      "TTD",
                                      "TWD",
                                      "TZS",
                                      "UAH",
                                      "UGX",
                                      "USD",
                                      "UYU",
                                      "UZS",
                                      "VEF",
                                      "VES",
                                      "VND",
                                      "VUV",
                                      "WST",
                                      "XAF",
                                      "XAG",
                                      "XAU",
                                      "XCD",
                                      "XDR",
                                      "XOF",
                                      "XPD",
                                      "XPF",
                                      "XPT",
                                      "YER",
                                      "ZAR",
                                      "ZMW",
                                      "ZWL"]
    
    

}



// shadow view
extension UIView {

    func custom_CornerRadius(colors : UIColor, radius : CGFloat, BorderWidth : CGFloat) {
        
        
        
        // corner radius
        self.layer.cornerRadius = radius
        
        // border
        self.layer.borderWidth = BorderWidth
        self.layer.borderColor = colors.cgColor
 
        
    }
    
    
}



extension UIColor
    {
    convenience init(hex: String, alpha: CGFloat = 1.0) {
        var hexFormatted: String = hex.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).uppercased()
       
        if hexFormatted.hasPrefix("#") {
            hexFormatted = String(hexFormatted.dropFirst())
            
        }
        assert(hexFormatted.count == 6, "Invalid hex code used.")
        var rgbValue: UInt64 = 0
        Scanner(string: hexFormatted).scanHexInt64(&rgbValue)
        
        self.init(red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0, green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0, blue: CGFloat(rgbValue & 0x0000FF) / 255.0, alpha: alpha)
        
        
    }
}



public extension Dictionary {
    
    func printAsJSON() {
        if let theJSONData = try? JSONSerialization.data(withJSONObject: self, options: .prettyPrinted),
            let theJSONText = String(data: theJSONData, encoding: String.Encoding.ascii) {
            print("\(theJSONText)")
        }
    }
}



extension Data {
    
    func printAsJSON() {
        if let theJSONData = try? JSONSerialization.jsonObject(with: self, options: []) as? NSDictionary {
            var swiftDict: [String: Any] = [:]
            for key in theJSONData.allKeys {
                let stringKey = key as? String
                if let key = stringKey, let keyValue = theJSONData.value(forKey: key) {
                    swiftDict[key] = keyValue
                }
            }
            swiftDict.printAsJSON()
        }
    }
}
