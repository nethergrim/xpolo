//
//  LocalTicker.swift
//  XPolo
//
//  Created by Андрей Дробязко on 26.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import Foundation

struct LocalTicker {

    
    // original data
    let identifier: Int
    let last: String
    let lowestAsk: String
    let highestBid: String
    let percentChange: String
    let baseVolume: String
    let quoteVolume: String
    let isFrozen: String
    let high24hr: String
    let low24hr: String
    
    // local, app data
    let primalCoinName: String
    let secondaryCoinName: String
    let isFavorite: Bool
    
    init(_ ticker: Ticker) {
        self.identifier = ticker.identifier
        self.last = ticker.last
        self.lowestAsk = ticker.lowestAsk
        self.highestBid = ticker.highestBid
        self.percentChange = ticker.percentChange
        self.baseVolume = ticker.baseVolume
        self.quoteVolume = ticker.quoteVolume
        self.isFrozen = ticker.isFrozen
        self.high24hr = ticker.high24hr
        self.low24hr = ticker.low24hr
        
        self.primalCoinName = 
        
    }
    
    static func map(_ ticker: Ticker) -> LocalTicker? {
        return LocalTicker(ticker)
    }

}

struct LocalTickers {

    let tickers: [LocalTicker]

    
    static func map(_ tickers: Tickers) -> LocalTickers? {
        
        return nil
    }
}

