//
//  ViewController.swift
//  Crypto
//
//  Created by Tunay Toksöz on 7.09.2022.
//

import UIKit
import SDWebImage

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    private var cryptoListViewModel : CryptoListViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
      getdata()
        
    }
    
    func getdata() {
        let url  = URL(string: "https://api.nomics.com/v1/currencies/ticker?key=41b612bfb14d8a35e691141c77a3036dca42247e&convert=USD")
        
        WebService().getCurrencies(url: url!) { cryptos in
            if let cryptos = cryptos {
                self.cryptoListViewModel = CryptoListViewModel(cryptoCurrencyList: cryptos)
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.cryptoListViewModel == nil ? 0 : self.cryptoListViewModel.numberOfRowsInSection()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CryptoCell") as! CryptoTableViewCell
        
        let cryptoViewModel = self.cryptoListViewModel.cryptoAtIndex(indexPath.row)
        
        cell.cryptoCurrencyLabel.text = cryptoViewModel.name + " " + cryptoViewModel.currency
        cell.cryptoPriceLabel.text = cryptoViewModel.price
        let urlImage = cryptoViewModel.logo_url
        let transformer = SDImageResizingTransformer(size: CGSize(width: 67, height: 58), scaleMode: .aspectFit)
        cell.cryptoImage.sd_setImage(with: URL(string: urlImage), placeholderImage: nil, context: [.imageTransformer : transformer])
        
        return cell
        
      
        
    }


}

