//
//  RequestManager.swift
//  XPolo
//
//  Created by Андрей Дробязко on 24.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import Foundation
import AlamofireObjectMapper
import Alamofire



class RequestManager {
    
    
    static let sharedInstance = RequestManager()
    
    let API_HOST = "https://poloniex.com/"
    let URL_GET_TICKERS = "public?command=returnTicker"

    func getTickers( completion:@escaping (_ tickers: Tickers?, _ error: Error?) -> Void) {
        
        
        let URL = API_HOST + URL_GET_TICKERS
        Alamofire.request(URL).responseObject { (response: DataResponse<Tickers>) in
            
            let tickers = response.result.value
            completion(tickers, response.error)
        }
    }

}
