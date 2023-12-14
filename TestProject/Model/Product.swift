//
//  Product.swift
//  TestProject
//
//  Created by Bedirhan Maden on 14.12.2023.
//

import Foundation

struct Product: Decodable {

    var id          : Int?    = nil
    var title       : String? = nil
    var price       : Double? = nil
    var description : String? = nil
    var category    : String? = nil
    var image       : String? = nil
    var rating      : Rating? = Rating()
}

struct Rating: Decodable {

    var rate  : Double? = nil
    var count : Int?    = nil
}
