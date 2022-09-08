//
//  CryptoViewModel.swift
//  Crypto
//
//  Created by Tunay Toksöz on 8.09.2022.
//

import Foundation

struct CryptoListViewModel {
    let cryptoCurrencyList : [CryptoCurrency]
    
    func numberOfRowsInSection() -> Int {
        return cryptoCurrencyList.count
    }
    
    func cryptoAtIndex(index : Int) -> CryptoViewModel {
        let crypto = self.cryptoCurrencyList[index]
        return CryptoViewModel(cryptoCurrency: crypto)
    }
    
}

struct CryptoViewModel{
    let cryptoCurrency : CryptoCurrency
    var name : String {
        return self.cryptoCurrency.name
    }
    var currency : String {
        return self.cryptoCurrency.currency
    }
    var price : String {
        return self.cryptoCurrency.price
    }
    var logo_url : String {
        return self.cryptoCurrency.logo_url
    }
}
