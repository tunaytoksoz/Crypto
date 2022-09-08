//
//  CryptoCurrency.swift
//  Crypto
//
//  Created by Tunay Toksöz on 8.09.2022.
//

import Foundation


struct CryptoCurrency : Decodable {
    let currency : String
    let price : String
    let logo_url : String
    let name : String
}
