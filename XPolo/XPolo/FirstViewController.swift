//
//  XPolo
//
//  Created by Андрей Дробязко on 24.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import UIKit

class MarketsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    var localTickers: LocalTickers?

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: "TickerCell", bundle: nil), forCellReuseIdentifier: "tickerCell")

        RequestManager.sharedInstance.getTickers { (tickers: Tickers?, error: Error?) in
            
            guard let safeTickers = tickers else {
                return
            }
            self.localTickers = LocalTickers.map(safeTickers)
            self.tableView.reloadData()
        }




    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // Table View delegates
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        guard localTickers != nil else {
            return 0
        }
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section:Int) -> Int {
        guard localTickers != nil else {
            return 0
        }
        return (localTickers?.tickers.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tickerCell", for: indexPath as IndexPath)
        if let tickerCell = cell as? TickerCell {
            // obj is a string array. Do something with stringArray
            tickerCell.bind(ticker: localTickers!.tickers[indexPath.startIndex])
        }
        
//        cell.delegate = self
        return cell
    }


}

