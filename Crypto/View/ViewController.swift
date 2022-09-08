//
//  ViewController.swift
//  Crypto
//
//  Created by Tunay Toksöz on 7.09.2022.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        let url  = URL(string: "https://api.nomics.com/v1/currencies/ticker?key=41b612bfb14d8a35e691141c77a3036dca42247e&convert=EUR")
        
        WebService().getCurrencies(url: url!) { cryptos in
            if let cryptos = cryptos {
              
            }
        }
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CryptoCell") as! CryptoTableViewCell
        return cell
    }


}

