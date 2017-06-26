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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        coin.addCharactersSpacing(spacing: 0.2, text: "ETC")
    }
    
    public func bind(ticker: Ticker){
        coin.addCharactersSpacing(spacing: 0.2, text: "ETC")
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        if (selected){
            setSelected(false, animated: true)
        }
    }
    
}