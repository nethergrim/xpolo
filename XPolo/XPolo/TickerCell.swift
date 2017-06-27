//
//  TickerCell.swift
//  XPolo
//
//  Created by Андрей Дробязко on 26.06.17.
//  Copyright © 2017 Андрей Дробязко. All rights reserved.
//

import UIKit

class TickerCell: UITableViewCell {

    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var coin: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var volume: UILabel!
    @IBOutlet weak var change: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    public func bind(ticker: LocalTicker){
        coin.addCharactersSpacing(spacing: 0.2, text: ticker.primalCoinName)
        price.text = ticker.last
        volume.text = ticker.baseVolume
        change.text = ticker.percentChange
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected){
            setSelected(false, animated: true)
        }
    }
    
}
