//
//  User.swift
//  TestProject
//
//  Created by Bedirhan Maden on 30.11.2023.
//

import Foundation


struct User : Decodable {
    var address  : Address? = Address()
     var id       : Int?     = nil
     var email    : String?  = nil
     var username : String?  = nil
     var password : String?  = nil
     var name     : Name?    = Name()
     var phone    : String?  = nil
     var _v       : Int?     = nil

}

struct Name: Decodable {

    var firstname : String? = nil
    var lastname  : String? = nil
}

struct Geolocation: Decodable {

    var lat  : String? = nil
    var long : String? = nil

}

struct Address: Decodable {

    var geolocation : Geolocation? = Geolocation()
    var city        : String?      = nil
    var street      : String?      = nil
    var number      : Int?         = nil
    var zipcode     : String?      = nil
}
