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
    
    
    var btc_bcn: Ticker?
    var btc_bela: Ticker?
    var btc_blk: Ticker?
    var btc_btcd: Ticker?
    var btc_btm: Ticker?
    var btc_bts: Ticker?
    var btc_burst: Ticker?
    var btc_clam: Ticker?
    var btc_dash: Ticker?
    var btc_dgb: Ticker?
    var btc_doge: Ticker?
    var btc_emc2: Ticker?
    var btc_fldc: Ticker?
    var btc_flo: Ticker?
    var btc_game: Ticker?
    var btc_huc: Ticker?
    var btc_ltc: Ticker?
    var btc_maid: Ticker?
    var btc_omni: Ticker?
    var btc_naut: Ticker?
    var btc_nav: Ticker?
    var btc_neos: Ticker?
    var btc_nmc: Ticker?
    var btc_note: Ticker?
    var btc_nxt: Ticker?
    var btc_pink: Ticker?
    var btc_pot: Ticker?
    var btc_ppc: Ticker?
    var btc_ric: Ticker?
    var btc_sjcx: Ticker?
    var btc_str: Ticker?
    var btc_sys: Ticker?
    var btc_via: Ticker?
    var btc_xvc: Ticker?
    var btc_vrc: Ticker?
    var btc_vtc: Ticker?
    var btc_xbc: Ticker?
    var btc_xcp: Ticker?
    var btc_xem: Ticker?
    var btc_xmr: Ticker?
    var btc_xpm: Ticker?
    var btc_xrp: Ticker?
    var usdt_btc: Ticker?
    var usdt_dash: Ticker?
    var usdt_ltc: Ticker?
    var usdt_nxt: Ticker?
    var usdt_str: Ticker?
    var usdt_xmr: Ticker?
    var usdt_xrp: Ticker?
    var xmr_bcn: Ticker?
    var xmr_blk: Ticker?
    var xmr_btcd: Ticker?
    var xmr_dash: Ticker?
    var xmr_ltc: Ticker?
    var xmr_maid: Ticker?
    var xmr_nxt: Ticker?
    var btc_eth: Ticker?
    var usdt_eth: Ticker?
    var btc_sc: Ticker?
    var btc_bcy: Ticker?
    var btc_exp: Ticker?
    var btc_fct: Ticker?
    var btc_rads: Ticker?
    var btc_amp: Ticker?
    var btc_dcr: Ticker?
    var btc_lsk: Ticker?
    var eth_lsk: Ticker?
    var btc_lbc: Ticker?
    var btc_steem: Ticker?
    var eth_steem: Ticker?
    var btc_sbd: Ticker?
    var btc_etc: Ticker?
    var eth_etc: Ticker?
    var usdt_etc: Ticker?
    var btc_rep: Ticker?
    var usdt_rep: Ticker?
    var eth_rep: Ticker?
    var btc_ardr: Ticker?
    var btc_zec: Ticker?
    var eth_zec: Ticker?
    var usdt_zec: Ticker?
    var xmr_zec: Ticker?
    var btc_strat: Ticker?
    var btc_nxc: Ticker?
    var btc_pasc: Ticker?
    var btc_gnt: Ticker?
    var eth_gnt: Ticker?
    var btc_gno: Ticker?
    var eth_gno: Ticker?
    
    var pairs: Array<Ticker> = Array()
    
    
    
    required init?(map: Map){
        
    }
    
    func deserialize(key: String, map: Map) -> Ticker? {
        var ticker: Ticker?
        ticker <- map[key]
        ticker?.pairName = key
        if let t = ticker {
            pairs.append(t)
        }
        return ticker
    }
    
    func mapping(map: Map) {
        btc_bcn = deserialize(key: "BTC_BCN", map: map)
        btc_bela = deserialize(key:"BTC_BELA", map: map)
        btc_blk = deserialize(key:"BTC_BLK", map: map)
        btc_btcd = deserialize(key:"BTC_BTCD", map: map)
        btc_btm = deserialize(key:"BTC_BTM", map: map)
        btc_bts = deserialize(key:"BTC_BTS", map: map)
        btc_burst = deserialize(key:"BTC_BURST", map: map)
        btc_clam = deserialize(key:"BTC_CLAM", map: map)
        btc_dash = deserialize(key:"BTC_DASH", map: map)
        btc_dgb = deserialize(key:"BTC_DGB", map: map)
        btc_doge = deserialize(key:"BTC_DOGE", map: map)
        btc_emc2 = deserialize(key:"BTC_EMC2", map: map)
        btc_fldc = deserialize(key:"BTC_FLDC", map: map)
        btc_flo = deserialize(key:"BTC_FLO", map: map)
        btc_game = deserialize(key:"BTC_GAME", map: map)
        btc_huc = deserialize(key:"BTC_HUC", map: map)
        btc_ltc = deserialize(key:"BTC_LTC", map: map)
        btc_maid = deserialize(key:"BTC_MAID", map: map)
        btc_omni = deserialize(key:"BTC_OMNI", map: map)
        btc_naut = deserialize(key:"BTC_NAUT", map: map)
        btc_nav = deserialize(key:"BTC_NAV", map: map)
        btc_neos = deserialize(key:"BTC_NEOS", map: map)
        btc_nmc = deserialize(key:"BTC_NMC", map: map)
        btc_note = deserialize(key:"BTC_NOT", map: map)
        btc_nxt = deserialize(key:"BTC_NTX", map: map)
        btc_pink = deserialize(key:"BTC_PINK", map: map)
        btc_pot = deserialize(key:"BTC_POT", map: map)
        btc_ppc = deserialize(key:"BTC_PPC", map: map)
        btc_ric = deserialize(key:"BTC_RIC", map: map)
        btc_sjcx = deserialize(key:"BTC_SJCX", map: map)
        btc_str = deserialize(key:"BTC_STR", map: map)
        btc_sys = deserialize(key:"BTC_SYS", map: map)
        btc_via = deserialize(key:"BTC_VIA", map: map)
        btc_xvc = deserialize(key:"BTC_XVC", map: map)
        btc_vrc = deserialize(key:"BTC_VRC", map: map)
        btc_vtc = deserialize(key:"BTC_VTC", map: map)
        btc_xbc = deserialize(key:"BTC_XBC", map: map)
        btc_xcp = deserialize(key:"BTC_XCP", map: map)
        btc_xem = deserialize(key:"BTC_XEM", map: map)
        btc_xmr = deserialize(key:"BTC_XMR", map: map)
        btc_xpm = deserialize(key:"BTC_XPM", map: map)
        btc_xrp = deserialize(key:"BTC_XRP", map: map)
        usdt_btc = deserialize(key:"USDT_BTC", map: map)
        usdt_dash = deserialize(key:"USDT_DASH", map: map)
        usdt_ltc = deserialize(key:"USDT_LTC", map: map)
        usdt_nxt = deserialize(key:"USDT_NXT", map: map)
        usdt_str = deserialize(key:"USDT_STR", map: map)
        usdt_xmr = deserialize(key:"USDT_XMR", map: map)
        usdt_xrp = deserialize(key:"USDT_XRP", map: map)
        xmr_bcn = deserialize(key:"XMR_BCN", map: map)
        xmr_blk = deserialize(key:"XMR_BLK", map: map)
        xmr_btcd = deserialize(key:"XMR_BTCD", map: map)
        xmr_dash = deserialize(key:"XMR_DASH", map: map)
        xmr_ltc = deserialize(key:"XMR_LTC", map: map)
        xmr_maid = deserialize(key:"XMR_MAID", map: map)
        xmr_nxt = deserialize(key:"XMR_NXT", map: map)
        btc_eth = deserialize(key:"BTC_ETH", map: map)
        usdt_eth = deserialize(key:"USDT_ETH", map: map)
        btc_sc = deserialize(key:"BTC_SC", map: map)
        btc_bcy = deserialize(key:"BTC_BCY", map: map)
        btc_exp = deserialize(key:"BTC_EXP", map: map)
        btc_fct = deserialize(key:"BTC_FCT", map: map)
        btc_rads = deserialize(key:"BTC_RADS", map: map)
        btc_amp = deserialize(key:"BTC_AMP", map: map)
        btc_dcr = deserialize(key:"BTC_DCR", map: map)
        btc_lsk = deserialize(key:"BTC_LSK", map: map)
        eth_lsk = deserialize(key:"ETH_LSK", map: map)
        btc_lbc = deserialize(key:"BTC_LBC", map: map)
        btc_steem = deserialize(key:"BTC_STEEM", map: map)
        eth_steem = deserialize(key:"ETH_STEEM", map: map)
        btc_sbd = deserialize(key:"BTC_SBD", map: map)
        btc_etc = deserialize(key:"BTC_ETC", map: map)
        eth_etc = deserialize(key:"ETH_ETC", map: map)
        usdt_etc = deserialize(key:"USDT_ETC", map: map)
        btc_rep = deserialize(key:"BTC_REP", map: map)
        usdt_rep = deserialize(key:"USDT_REP", map: map)
        eth_rep = deserialize(key:"ETH_REP", map: map)
        btc_ardr = deserialize(key:"BTC_ARDR", map: map)
        btc_zec = deserialize(key:"BTC_ZEC", map: map)
        eth_zec = deserialize(key:"ETH_ZEC", map: map)
        usdt_zec = deserialize(key:"USDT_ZEC", map: map)
        xmr_zec = deserialize(key:"XMR_ZEC", map: map)
        btc_strat = deserialize(key:"BTC_STRAT", map: map)
        btc_nxc = deserialize(key:"BTC_NXC", map: map)
        btc_pasc = deserialize(key:"BTC_PASC", map: map)
        btc_gnt = deserialize(key:"BTC_GNT", map: map)
        eth_gnt = deserialize(key:"ETH_GNT", map: map)
        btc_gno = deserialize(key:"BTC_GNO", map: map)
        eth_gno = deserialize(key:"ETH_GNO", map: map)
    }
    
}


class Ticker: Mappable {


    var identifier: Int?
    var last: String?
    var lowestAsk: String?
    var highestBid: String?
    var percentChange: String?
    var baseVolume: String?
    var quoteVolume: String?
    var isFrozen: String?
    var high24hr: String?
    var low24hr: String?
    var pairName: String
    
    required init?(map: Map){
        pairName = ""
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
