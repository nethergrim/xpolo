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

    init(_ ticker: Ticker, name: String, secondaryCoinName: String, isFavorite: Bool) {
        self.identifier = ticker.identifier != nil ? ticker.identifier! : 0
        self.last = ticker.last != nil ? ticker.last! : "0"
        self.lowestAsk = ticker.lowestAsk != nil ? ticker.lowestAsk! : "0"
        self.highestBid = ticker.highestBid != nil ? ticker.highestBid! : "0"
        self.percentChange = ticker.percentChange != nil ? ticker.percentChange! : "0"
        self.baseVolume = ticker.baseVolume != nil ? ticker.baseVolume! : "0"
        self.quoteVolume = ticker.quoteVolume != nil ? ticker.quoteVolume! : "0"
        self.isFrozen = ticker.isFrozen != nil ? ticker.isFrozen! : "0"
        self.high24hr = ticker.high24hr != nil ? ticker.high24hr! : "0"
        self.low24hr = ticker.low24hr != nil ? ticker.low24hr! : "0"

        self.primalCoinName = name
        self.secondaryCoinName = secondaryCoinName
        self.isFavorite = isFavorite
    }

}

struct LocalTickers {

    var tickers: [LocalTicker]


    static func map(_ tickers: Tickers) -> LocalTickers {
        let array = tickers.pairs.map { (ticker: Ticker) -> LocalTicker in
            let firstCoin: String = ticker.pairName.substring(to: ticker.pairName.index(of: "_"))
            let lastCoin: String = ticker.pairName.substring(from: (ticker.pairName.index(of: "_") + 1))
            return LocalTicker(ticker, name: lastCoin, secondaryCoinName: firstCoin, isFavorite: false)
        }
        return LocalTickers(tickers: array)
    }
    
    
    
    static func map(_ tickers: Tickers, filterOnlySecondaryCurrency: String) -> LocalTickers {
        let tickers = map(tickers).tickers.filter { (ticker: LocalTicker) -> Bool in
            return ticker.secondaryCoinName == filterOnlySecondaryCurrency
            }.sorted { (ticker1: LocalTicker, ticker2: LocalTicker) -> Bool in
                return ticker1.primalCoinName < ticker2.primalCoinName
            }
        return LocalTickers(tickers: tickers)
    }

}



