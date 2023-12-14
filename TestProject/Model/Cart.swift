//
//  Cart.swift
//  TestProject
//
//  Created by Bedirhan Maden on 14.12.2023.
//

import Foundation

struct Cart: Decodable {

    var id       : Int?        = nil
    var userId   : Int?        = nil
    var date     : String?     = nil
    var products : [Products]? = []
    var _v       : Int?        = nil
}

struct Products: Decodable {

    var productId : Int? = nil
    var quantity  : Int? = nil
}
