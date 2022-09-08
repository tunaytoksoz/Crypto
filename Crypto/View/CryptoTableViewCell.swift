//
//  CryptoTableViewCell.swift
//  Crypto
//
//  Created by Tunay Toksöz on 7.09.2022.
//

import UIKit

class CryptoTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var cryptoImage: UIImageView!
    @IBOutlet weak var cryptoCurrencyLabel: UILabel!
    @IBOutlet weak var cryptoPriceLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
