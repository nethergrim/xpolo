//
//  XPolo
//
//  Created by Андрей Дробязко on 24.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import UIKit
import AlamofireObjectMapper
import Alamofire

class MarketsViewController: UIViewController {

    @IBOutlet weak var textSmall: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let URL = "https://poloniex.com/public?command=returnTicker"
        Alamofire.request(URL).responseObject { (response: DataResponse<Tickers>) in
            
            let tickers = response.result.value
            self.textSmall.text = "BTC_ETH = " + tickers!.btc_eth!.last!
            
        }
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

