//
//  MarketModels.swift
//  XPolo
//
//  Created by Андрей Дробязко on 24.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import Foundation

import ObjectMapper

class Tickers: Mappable {
    
    var btc_lsk: Ticker
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        btc_lsk <- map["BTC_LSK"]
    }
    
}


class Ticker: Mappable {


    var identifier: Int
    var last: String
    var lowestAsk: String
    var highestBid: String
    var percentChange: String
    var baseVolume: String
    var quoteVolume: String
    var isFrozen: String
    var high24hr: String
    var low24hr: String
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        identifier <- map["id"]
        last <- map["last"]
        lowestAsk <- map["lowestAsk"]
        highestBid <- map["highestBid"]
        percentChange <- map["percentChange"]
        baseVolume <- map["baseVolume"]
        quoteVolume <- map["quoteVolume"]
        isFrozen <- map["isFrozen"]
        high24hr <- map["high24hr"]
        low24hr <- map["low24hr"]
    }
    
    
}
