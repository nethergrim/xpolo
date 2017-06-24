//
//  XPolo
//
//  Created by Андрей Дробязко on 24.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import UIKit

class MarketsViewController: UIViewController {

    @IBOutlet weak var textSmall: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.


        RequestManager.sharedInstance.getTickers { (tickers: Tickers?, error: Error?) in
            self.textSmall.text = tickers?.btc_eth?.last
        }




    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

